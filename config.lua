-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Set leader here for formatter
-- lvim.leader = "space"

-- Set goto end of line to gl
vim.keymap.set("n", "gl", "$", { noremap = true, silent = true })
vim.keymap.set("v", "gl", "$h", { noremap = true, silent = true })

-- Set goto start of line to gh
vim.keymap.set("n", "gh", "0", { noremap = true, silent = true })
vim.keymap.set("v", "gh", "0", { noremap = true, silent = true })

-- Format on save for javascript with semistandard
vim.api.nvim_set_keymap(
	"n",
	"FF",
	":!npx semistandard --fix %<CR>:set autoread<<CR>",
	{ noremap = true, silent = true }
)
