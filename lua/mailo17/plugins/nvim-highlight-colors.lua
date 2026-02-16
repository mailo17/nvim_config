return {
    {
        "brenoprata10/nvim-highlight-colors",
        event = "BufReadPost",
        config = function()
            require("nvim-highlight-colors").setup({
                -- Render style: 'background', 'foreground', or 'virtual'
                render = "virtual", -- show inline box
                virtual_symbol = "■", -- colored box
                virtual_symbol_prefix = "",
                virtual_symbol_suffix = " ",
                virtual_symbol_position = "inline", -- inline like VS Code
                enable_hex = true,
                enable_short_hex = true,
                enable_rgb = true,
                enable_hsl = true,
                enable_named_colors = true,
                enable_var_usage = true,
                enable_tailwind = false, -- enable if you want tailwind
            })
        end,
    },
}
