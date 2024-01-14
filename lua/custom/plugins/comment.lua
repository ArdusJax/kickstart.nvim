return {
    'numToStr/Comment.nvim',
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    opts = {},
    lazy = false,
    config = function ()
        require('Comment').setup()
    end
}
