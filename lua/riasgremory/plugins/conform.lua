return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "gofmt" },
                python = { "autopep8" },
                c = { "clang-format" }
            }
        })
    end
}
