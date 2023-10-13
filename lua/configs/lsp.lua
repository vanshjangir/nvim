require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "tsserver", "clangd", "pyright"}
  })

local on_attach = function(_,_)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
 
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {})
  vim.keymap.set("n", "G", vim.lsp.buf.hover, {})
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
