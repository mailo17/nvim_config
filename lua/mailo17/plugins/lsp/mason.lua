return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- import mason-tool-installer
        local mason_tool_installer = require("mason-tool-installer")

        -- setup mason with icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        -- ✅ FIXED: add automatic_installation = true
        mason_lspconfig.setup({
            ensure_installed = {
                "html",
                -- "tsserver",
                "cssls",
                "tailwindcss",
                "svelte",
                "lua_ls",
                "graphql",
                "emmet_ls",
                "prismals",
                "pyright",
                "clangd",
            },
            automatic_installation = true, -- ✅ this line fixes the crash
        })

        -- clangd custom setup (optional, your config is fine here)
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({
            cmd = { "clangd", "--clang-tidy=false" },
        })

        -- setup tool installer for formatters/linters
        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
                "pylint",
                "eslint_d",
                "clang-format",
            },
        })
    end,
}
