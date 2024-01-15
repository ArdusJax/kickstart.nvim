return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "rouge8/neotest-rust",
    "nvim-neotest/neotest-go",
    "lawrence-laz/neotest-zig",
    "nvim-neotest/neotest-jest",
  },
  config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rust") {
            args = { "--no-capture" },
          },
          require("neotest-go")({
            experimental = {
              test_table = true,
            },
            args = { "-count=1", "--timeout=60s" }
          }),
          require("neotest-zig"),
          require("neotest-jest")({
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function (path)
              return vim.fn.getcwd()
            end,
          }),
        },
      })
  end
}
