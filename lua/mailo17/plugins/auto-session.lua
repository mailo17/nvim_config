return {
    "rmagatti/auto-session",
    config = function()
        require("auto-session").setup({
            log_level = "info",
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })

        -- Keymaps using the new commands
        local keymap = vim.keymap
        keymap.set("n", "<leader>wr", ":AutoSession restore<CR>", { desc = "Restore last session for cwd" })
        keymap.set("n", "<leader>ws", ":AutoSession save<CR>", { desc = "Save session for cwd" })
    end,
}
