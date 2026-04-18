-- LSP server configs
vim.lsp.config('gopls', {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
      hints = {
        parameterNames = true,
      },
    },
  },
})

vim.lsp.enable('gopls')

vim.lsp.config('zls', {})
vim.lsp.enable('zls')

vim.lsp.config('ts_ls', {})
vim.lsp.enable('ts_ls')

-- LSP keymaps (set when an LSP attaches to a buffer)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    local fzf = require("fzf-lua")
    vim.keymap.set('n', 'gd', fzf.lsp_definitions, opts)
    vim.keymap.set('n', 'gr', fzf.lsp_references, opts)
    vim.keymap.set('n', 'gD', fzf.lsp_declarations, opts)
    vim.keymap.set('n', 'gi', fzf.lsp_implementations, opts)
    vim.keymap.set('n', '<leader>ss', function()
      fzf.lsp_document_symbols({
        symbol_filter = { "Function", "Method", "Struct", "Enum", "Interface", "Constant" },
      })
    end, opts)
    vim.keymap.set('n', '<leader>sS', fzf.lsp_workspace_symbols, opts)
    vim.keymap.set('n', '<leader>sd', fzf.diagnostics_document, opts)
    vim.keymap.set('n', '<leader>sD', function()
      fzf.diagnostics_workspace({ severity_only = vim.diagnostic.severity.ERROR })
    end, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format({ async = true }) end, opts)
    vim.keymap.set('n', '<leader>lh', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, opts)
    vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  end,
})
