local status_ok, go = pcall(require, "go")
if not status_ok then
  return
end

go.setup()

vim.cmd [[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]]

