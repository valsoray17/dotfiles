local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>f", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>b", fzf.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>r", fzf.oldfiles, { desc = "Recent files" })
vim.keymap.set("n", "<leader>/", fzf.live_grep, { desc = "Live grep" })
