local fzf = require("fzf-lua")

-- files / buffers / recent
vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fr", function()
  fzf.oldfiles({ cwd_only = true })
end, { desc = "Recent files (cwd)" })
vim.keymap.set("n", "<leader>fg", fzf.git_files, { desc = "Git files" })
vim.keymap.set("n", "<leader>/", fzf.live_grep, { desc = "Live grep" })

