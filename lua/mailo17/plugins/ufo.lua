return {
    "kevinhwang91/nvim-ufo",
    dependencies = {
        "kevinhwang91/promise-async", -- required dependency
    },
    config = function()
        -- set fold options (recommended)
        vim.o.foldcolumn = "0"
        vim.o.foldlevel = 99
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true

        require("ufo").setup({
            provider_selector = function(bufnr, filetype, buftype)
                return { "treesitter", "indent" }
            end,
        })

        -- Keymap to peek folded linesuu
        vim.keymap.set("n", "zp", function()
            require("ufo").peekFoldedLinesUnderCursor()
        end, { desc = "Peek fold under cursor" })
    end,
}
