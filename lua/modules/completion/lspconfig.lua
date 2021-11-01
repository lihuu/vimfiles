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

local nvim_lsp = require('lspconfig')
--local lsp_install = require('lspinstall')
local saga = require('lspsaga')
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

local function custom_attach()
  require('lsp_signature').on_attach({
      bind = true,
      use_lspsaga = false,
      floating_window = true,
      fix_pos = true,
      hint_enable = true,
      hi_parameter = "Search",
      handler_opts = {"double"}
    })
  local nvim_lsp = require('lspconfig')

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', '<leader>u', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  end

end

local function switch_source_header_splitcmd(bufnr, splitcmd)
  bufnr = nvim_lsp.util.validate_bufnr(bufnr)
  local params = {uri = vim.uri_from_bufnr(bufnr)}
  vim.lsp.buf_request(bufnr, 'textDocument/switchSourceHeader', params,
    function(err, _, result)
      if err then error(tostring(err)) end
      if not result then
        print("Corresponding file can’t be determined")
        return
      end
      vim.api.nvim_command(splitcmd .. ' ' .. vim.uri_to_fname(result))
    end)
  end

  local function setup_cpp()
    nvim_lsp.clangd.setup {
      capabilities = capabilities,
      flags = {debounce_text_changes = 500},
      on_attach = custom_attach,
      commands = {
        ClangdSwitchSourceHeader = {
          function()
            switch_source_header_splitcmd(0, "edit")
          end,
          description = "Open source/header in current buffer"
        },
        ClangdSwitchSourceHeaderVSplit = {
          function()
            switch_source_header_splitcmd(0, "vsplit")
          end,
          description = "Open source/header in a new vsplit"
        },
        ClangdSwitchSourceHeaderSplit = {
          function()
            switch_source_header_splitcmd(0, "split")
          end,
          description = "Open source/header in a new split"
        }
      }
    }
  end

  local function setup_servers1()
    lsp_install.setup()
    local servers = lsp_install.installed_servers()
    for _, lsp in pairs(servers) do
      if lsp == "lua" then
        nvim_lsp[lsp].setup {
          capabilities = capabilities,
          flags = {debounce_text_changes = 500},
          settings = {
            Lua = {
              diagnostics = {globals = {"vim", "packer_plugins"}},
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
        }
      else
        nvim_lsp[lsp].setup {
          capabilities = capabilities,
          flags = {debounce_text_changes = 500},
          on_attach = custom_attach
        }
      end
    end
  end

  --lsp_install.post_install_hook = function()
  --setup_servers() -- reload installed servers
  --    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
  --end

  --setup_servers()

  --setup_cpp()

  local lsp_installer = require("nvim-lsp-installer")
  local function intall_severs()
    local servers = {"tsserver",'bashls','cmake','cssls','clangd','html','jsonls','gopls','jdtls','pyright','powershell_es','lemminx'}
    for _, name in ipairs(servers) do
      local ok,server = lsp_installer.get_server(name)
      if ok then
        if not server:is_installed() then
          server:install()
        end
      end
    end
  end

  local function setup_servers()
    intall_severs()
    lsp_installer.on_server_ready(function(server)
      local opts = {}
      if server.name=='lua' then
        server:setup({
            capabilities = capabilities,
            flags = {debounce_text_changes = 500},
            settings = {
              Lua = {
                diagnostics = {globals = {"vim", "packer_plugins"}},
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
      else
        server:setup({
            capabilities = capabilities,
            flags = {debounce_text_changes = 500},
            on_attach = custom_attach
          })
      end

      -- (optional) Customize the options passed to the server
      -- if server.name == "tsserver" then
      --     opts.root_dir = function() ... end
      -- end

      -- This setup() function is exactly the same as lspconfig's setup function.
      -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
    end)
  end

  setup_servers()

