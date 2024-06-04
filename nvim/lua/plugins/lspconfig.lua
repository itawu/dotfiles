return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({ automatic_installation = true })

    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

    -- java
    require("lspconfig").jdtls.setup({
      capabilities = capabilities,
      handlers = {
        ["textDocument/publishDiagnostics"] = function() end,
      },
    })

    -- c/cpp
    require("lspconfig").clangd.setup({
      capabilities = capabilities,
      handlers = {
        ["textDocument/publishDiagnostics"] = function() end,
      },
    })
   end,
}

