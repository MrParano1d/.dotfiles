local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "mrparano1d.lsp.configs"
require("mrparano1d.lsp.handlers").setup()
-- require "mrparano1d.lsp.null-ls"
