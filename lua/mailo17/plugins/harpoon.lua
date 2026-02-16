return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    opts = {
        settings = {
            enter_on_sendcmd = false,
            excluded_filetypes = { "harpoon", "alpha", "dashboard", "gitcommit" },
            mark_branch = false,
            save_on_change = true,
            save_on_toggle = false,
            sync_on_ui_close = false,
            tmux_autoclose_windows = false,
        },
    },

    config = function(_, opts)
        local harpoon = require("harpoon")
        harpoon:setup(opts)

        vim.keymap.set("n", "<leader>ha", function()
            harpoon:list():append()
        end, { desc = "Harpoon: Add current file" })

        vim.keymap.set("n", "<leader>h", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Harpoon: Toggle quick menu" })

        vim.keymap.set("n", "<leader>h1", function()
            harpoon:list():select(1)
        end, { desc = "Harpoon: Go to file 1" })

        vim.keymap.set("n", "<leader>h2", function()
            harpoon:list():select(2)
        end, { desc = "Harpoon: Go to file 2" })

        vim.keymap.set("n", "<leader>h3", function()
            harpoon:list():select(3)
        end, { desc = "Harpoon: Go to file 3" })

        vim.keymap.set("n", "<leader>h4", function()
            harpoon:list():select(4)
        end, { desc = "Harpoon: Go to file 4" })

        vim.keymap.set("n", "<leader>fh", function()
            require("telescope").extensions.harpoon.marks()
        end, { desc = "Harpoon: Open marks with Telescope" })
    end,
}
