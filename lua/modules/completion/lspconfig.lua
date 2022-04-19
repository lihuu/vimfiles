if not packer_plugins['nvim-lspconfig'].loaded then
  vim.cmd [[packadd nvim-lspconfig]]
end

if not packer_plugins['lspsaga.nvim'].loaded then
  vim.cmd [[packadd lspsaga.nvim]]
end

if not packer_plugins['nvim-lsp-installer'].loaded then
  vim.cmd [[packadd nvim-lsp-installer]]
end

if not packer_plugins['lsp_signature.nvim'].loaded then
  vim.cmd [[packadd lsp_signature.nvim]]
end

-- local nvim_lsp = require('lspconfig')
-- local lsp_install = require('lspinstall')
-- local saga = require('lspsaga')
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.documentationFormat = {
  'markdown', 'plaintext'
}
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport =
  true
capabilities.textDocument.completion.completionItem.tagSupport = {
  valueSet = {1}
}
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {'documentation', 'detail', 'additionalTextEdits'}
}

local function ts_utils_setup(client)
  local ts_utils = require('nvim-lsp-ts-utils')
  ts_utils.setup {
    debug = false,
    disable_commands = false,
    enable_import_on_completion = true,

    -- import all
    import_all_timeout = 5000, -- ms
    -- lower numbers indicate higher priority
    import_all_priorities = {
      local_files = 1, -- git files or files with relative path markers
      same_file = 2, -- add to existing import statement
      buffer_content = 3, -- loaded buffer content
      buffers = 4 -- loaded buffer names
    },
    import_all_scan_buffers = 100,
    import_all_select_source = false,

    -- eslint
    eslint_enable_code_actions = true,
    eslint_enable_disable_comments = true,
    eslint_bin = "eslint",
    eslint_enable_diagnostics = false,
    eslint_opts = {},

    -- formatting
    enable_formatting = false,
    formatter = "prettier",
    formatter_opts = {},

    -- update imports on file move
    update_imports_on_move = false,
    require_confirmation_on_move = false,
    watch_dir = nil,

    -- filter diagnostics
    filter_out_diagnostics_by_severity = {},
    filter_out_diagnostics_by_code = {},

    -- inlay hints
    auto_inlay_hints = true,
    inlay_hints_highlight = "Comment"
  }

  -- required to fix code action ranges and filter diagnostics
  ts_utils.setup_client(client)
end

local function custom_attach(client, bufnr)

  require('lsp_signature').on_attach({
    bind = true,
    use_lspsaga = false,
    floating_window = true,
    fix_pos = true,
    hint_enable = true,
    hi_parameter = "Search",
    handler_opts = {"double"}
  })

  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = {noremap = true, silent = true}

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>',
                 opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',
                 opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa',
                 '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr',
                 '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl',
                 '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                 opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>',
                 opts)
  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>',
                 opts)
  buf_set_keymap('n', '<leader>u', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e',
                 '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q',
                 '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local function attach_tsserver(client, bufnr)
  custom_attach(client, bufnr)
  -- ts_utils_setup(client)
end

local lsp_installer = require("nvim-lsp-installer")
local function install_severs()
  local servers = {
    "tsserver", 'bashls', 'cmake', 'cssls', 'clangd', 'html', 'jsonls', 'gopls',
    'jdtls', 'pyright', 'powershell_es', 'lemminx', 'sumneko_lua', 'vimls',
    'diagnosticls', 'dockerls', 'sqlls', 'yamlls'
  }
  -- 'denols','dockerls','cmake','sqlls','yamlls'
  for _, name in ipairs(servers) do
    local ok, server = lsp_installer.get_server(name)
    if ok then
      if not server:is_installed() then
        server:install()
        print(vim.inspect('start to install lsp server:' .. name))
      end
    end
  end
end

local function setup_servers()
  install_severs()
  lsp_installer.on_server_ready(function(server)
    if server.name == 'lua' or server.name == 'sumneko_lua' then
      server:setup({
        capabilities = capabilities,
        flags = {debounce_text_changes = 500},
        settings = {
          Lua = {
            diagnostics = {
              globals = {"vim", "packer_plugins", "hs", "spoon", "ngx"}
            },
            workspace = {
              library = {
                [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true
              },
              maxPreload = 100000,
              preloadFileSize = 10000
            },
            telemetry = {enable = false}
          }
        },
        on_attach = custom_attach
      })
    elseif server.name == 'tsserver' then
      server:setup({
        capabilities = capabilities,
        flags = {debounce_text_changes = 500},
        on_attach = attach_tsserver
      })
    else
      server:setup({
        capabilities = capabilities,
        flags = {debounce_text_changes = 500},
        on_attach = custom_attach
      })
    end
  end)
end

--[[nvim_lsp.diagnosticls.setup({
    on_attach = custom_attach,
    filetypes={'javascript','javascriptreact','typescriptreact','json','typescript','css','less','markdown','pandoc'},
    init_options={
        linters={
            eslint={
                command = 'eslint_d',
                rootPatterns={'.git'},
                debounce=100,
                args={'--stdin','--stdin-filename','%filepath','--format','json'},
                sourceName = 'eslint_d',
                parseJson = {
                    errorsRoot = '[0].messages',
                    line = 'line',
                    column = 'column',
                    endLine = 'endLine',
                    endColumn = 'endColumn',
                    message = '[eslint] ${message} [${ruleId}]',
                    security = 'severity'
                },
                securities={
                    [2] = 'error',
                    [1] = 'warning'
                }
            }
        },
        filetypes = {
            javascript='eslint',
            javascriptreact='eslint',
            typescript = 'eslint',
            typescriptreact='eslint'
        },
        formatters={
            eslint_d = {
                command = 'eslint_d',
                args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
                rootPatterns = { '.git' },
            },
            prettier = {
                command = 'prettier',
                args = { '--stdin-filepath', '%filename' }
            }
        },
        formatFiletypes = {
            css = 'prettier',
            javascript = 'eslint_d',
            javascriptreact = 'eslint_d',
            json = 'prettier',
            scss = 'prettier',
            less = 'prettier',
            typescript = 'eslint_d',
            typescriptreact = 'eslint_d',
            json = 'prettier',
            markdown = 'prettier',
        }
    }
})]]

setup_servers()

