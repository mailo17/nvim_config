require("mailo17.core.options")
require("mailo17.core.highlight") --
require("mailo17.core.keymaps")
require("mailo17.core.colorscheme")
require("mailo17.lazy")
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })

vim.api.nvim_set_keymap("n", "gg", "gg^", { noremap = true, silent = true })
