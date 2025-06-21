return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",  -- Make sure you’re using the latest release
        build = "make install_jsregexp",  -- Optional: install jsregexp for extended regex support

        dependencies = { "rafamadriz/friendly-snippets" },

        config = function()
            local ls = require("luasnip")

            -- Enable autosnippets (automatic snippet expansion)
            ls.config.set_config({
                enable_autosnippets = true,  -- Enable autosnippets
                history = true,  -- Remember last used snippets
            })

            -- Automatically expand or jump when typing
            vim.cmd([[
                augroup LuaSnipAutoExpand
                    autocmd!
                    autocmd InsertCharPre * lua require("luasnip").expand_or_jump()
                augroup END
            ]])
        end,
    }
}
