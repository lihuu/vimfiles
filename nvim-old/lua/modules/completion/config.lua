local config = {}

function config.nvim_lsp()
  require('modules.completion.lspconfig')
end

function config.cmp()
  local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end
  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and
             vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col)
               :match("%s") == nil
  end

  local cmp = require('cmp')
  cmp.setup {
    formatting = {
      format = function(entry, vim_item)
        local lspkind_icons = {
          Class = "ﴯ",
          Color = "",
          Constant = "",
          Constructor = "",
          Enum = "",
          EnumMember = "",
          Event = "",
          Field = "ﰠ",
          File = "",
          Folder = "",
          Function = "",
          Interface = "",
          Keyword = " ",
          Method = "",
          Module = "",
          Operator = "",
          Property = "ﰠ",
          Reference = "",
          Snippet = "",
          Struct = "פּ",
          Text = "",
          TypeParameter = "",
          Unit = "塞",
          Value = "",
          Variable = ""
        }
        -- load lspkind icons
        vim_item.kind = string.format("%s %s", lspkind_icons[vim_item.kind],
                                      vim_item.kind)

        vim_item.menu = ({
          cmp_tabnine = "[TN]",
          nvim_lsp = "[LSP]",
          orgmode = "[ORG]",
          nvim_lua = "[Lua]",
          buffer = "[BUF]",
          path = "[PATH]",
          tmux = "[TMUX]",
          luasnip = "[SNIP]",
          spell = "[SPELL]"
        })[entry.source.name]

        return vim_item
      end
    },
    -- You can set mappings if you want
    mapping = {
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
      }),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.close(),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, {"i", "s"}),

      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, {"i", "s"}),
      ["<C-h>"] = function(fallback)
        if require("luasnip").jumpable(-1) then
          vim.fn.feedkeys(t("<Plug>luasnip-jump-prev"), "")
        else
          fallback()
        end
      end,
      ["<C-l>"] = function(fallback)
        if require("luasnip").expand_or_jumpable() then
          vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
        else
          fallback()
        end
      end
    },

    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end
    },

    -- You should specify your *installed* sources.
    sources = {
      {name = 'nvim_lsp'}, {name = 'path'}, {name = 'luasnip'},
      {name = 'cmp_tabnine'}, {name = 'nvim_lua'}, {name = 'treesitter'},
      {name = 'buffer'}, {name = 'spell'}, {name = 'tmux'}, {name = 'orgmode'}
    }
  }
end

function config.luasnip()
  require('luasnip').config.set_config {
    history = true
    -- updateevents = "TextChanged,TextChangedI"
  }
  require("luasnip/loaders/from_vscode").load()
end

-- function config.tabnine()
--     local tabnine = require('cmp_tabnine.config')
--     tabnine:setup({max_line = 1000, max_num_results = 20, sort = true})
-- end

function config.autopairs()
  require('nvim-autopairs').setup {fast_wrap = {}}

  -- If you want insert `(` after select function or method item
  -- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  -- local cmp = require('cmp')
  -- cmp.event:on('confirm_done',
  -- cmp_autopairs.on_confirm_done({map_char = {tex = ''}}))
end

function config.nullls()
  -- require("null-ls").config {}
  -- require("lspconfig")["null-ls"].setup {}
end

return config
