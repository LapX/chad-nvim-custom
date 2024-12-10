local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

-- Configure other servers
local servers = {"tsserver", "tailwindcss", "eslint", "hls"}
--local servers = {"denols", "tailwindcss", "eslint"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
