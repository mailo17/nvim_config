return {
  "p00f/clangd_extensions.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  ft = { "c", "cpp", "objc", "objcpp" },
  config = function()
    require("clangd_extensions").setup({
      inlay_hints = {
        inline = vim.fn.has("nvim-0.10") == 1,
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>ci", function()
      require("clangd_extensions.inlay_hints").toggle_inlay_hints()
    end, { desc = "Toggle Inlay Hints (C/C++)" })

    keymap.set("n", "<leader>ca", function()
      require("clangd_extensions.ast").show_ast()
    end, { desc = "Show AST (C/C++)" })
  end,
}
