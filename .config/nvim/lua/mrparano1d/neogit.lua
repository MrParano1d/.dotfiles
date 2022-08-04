local status_ok, neogit = pcall(require, "neogit")
if not status_ok then
	return
end

local nnoremap = require('mrparano1d.keymaps').nnoremap

neogit.setup {}

nnoremap("<leader>gs", function()
  neogit.open({})
end);

nnoremap("<leader>ga", "<cmd>!git add --all<CR>");
nnoremap("<leader>gf", "<cmd>!git fetch --all<CR>");

