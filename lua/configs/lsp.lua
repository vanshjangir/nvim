require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "tsserver", "clangd", "pyright", "rust_analyzer", "cssls", "html", "gopls"}
  })

local on_attach = function(_,_)
  local opts = { buffer = bufnr, noremap = true, silent = true }
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, opts)
  vim.keymap.set("n","gk", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
require("lspconfig").tsserver.setup{
  on_attach = on_attach
}
require("lspconfig").clangd.setup{
    on_attach = on_attach
}
require("lspconfig").pyright.setup{
    on_attach = on_attach
}
require("lspconfig").rust_analyzer.setup{
    on_attach = on_attach
}
require("lspconfig").cssls.setup{
    on_attach = on_attach
}
require("lspconfig").html.setup{
    on_attach = on_attach
}
require("lspconfig").gopls.setup{
    on_attach = on_attach
}
