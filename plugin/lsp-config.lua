

--[[

if server.name == "sumneko_lua" then
    opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'use' }
          },
        }
      }
    }
  end

--]]


require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "clangd" }
})


require("lspconfig").sumneko_lua.setup {}
require("lspconfig").clangd.setup {}







