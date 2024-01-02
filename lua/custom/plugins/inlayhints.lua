return {
  'simrat39/rust-tools.nvim',
  version = "*",
  config = function ()
    require('rust-tools').setup {
      tools = {
        executor = require('rust-tools.executors').termopen,
        inlay_hints = {
          auto = false,
          show_parameter_hints = true,
          parameter_hints_prefix = "❮❮❮⊜ ",
          other_hints_prefix = "⊜❯❯❯ ",
          max_len_align = false,
          max_len_align_padding = 1,
          right_align = false,
          right_align_padding = 7,
          highlight = "Comment",
        },
        server = {
          standalone = true,
          on_attach = function (_, bufnr)
            vim.keymap.set("n", "<C-space>", require('rust-tools').hover_actions.hover_actions, { buffer = bufnr })
            vim.keymap.set("n", "<Leader>a", require('rust-tools').hover_actions.hover_actions, { buffer = bufnr })
          end,
        },
      },
    }
  end,
}
