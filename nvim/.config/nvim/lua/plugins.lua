return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup()
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup()
    end,
  },
  { 'neovim/nvim-lspconfig' },
  {
    'nvim-treesitter/nvim-treesitter',
    version = '*',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'go', 'lua', 'json', 'yaml', 'toml', 'bash', 'markdown', 'javascript', 'typescript', 'tsx' },
        highlight = { enable = true },
      })
    end,
  },
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      keymap = {
        preset = "none",
        ["<C-Space>"] = { "show", "fallback" },
        ["<C-e>"] = { "hide" },
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
      completion = {
        trigger = {
          show_on_keyword = false,
          show_on_trigger_character = false,
        },
      },
      sources = {
        default = { "lsp", "buffer", "path" },
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.fzf")
    end,
  },
}
