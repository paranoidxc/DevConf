vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", {})
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>", {})
vim.keymap.set("n", "<leader>of", ":Telescope oldfiles<CR>", {})
vim.keymap.set("n", "<leader>km", ":Telescope keymaps<CR>", {})
vim.keymap.set("n", "<leader>lp", ":Telescope lsp_document_symbols<CR>")
vim.keymap.set("n", "<leader>lr", ":Telescope lsp_references<CR>")
vim.keymap.set("n", "<leader>ld", ":Telescope lsp_definitions<CR>")

vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, {})

vim.keymap.set("n", "<C-p>", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>x", ":bd<CR>")

vim.keymap.set("n", "<leader>/", "gcc", { remap = true })

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	-- cmd = "lazygit",
	-- dir = "git_dir",
	direction = "float",
	float_opts = {
		border = "double",
	},
	-- function to run on opening the terminal
	on_open = function(term)
		vim.cmd("startinsert!")
		vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	end,
	-- function to run on closing the terminal
	on_close = function(term)
		vim.cmd("startinsert!")
	end,
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>\\", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<leader>\\", "<CR>", {noremap = true, silent = true})

-- auto import go package
-- %! goimports

-- rename
--mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")

-- code action
--mapbuf("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>")

-- go xx

-- mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")

-- mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
vim.keymap.set("n", "gh", ":lua vim.lsp.buf.hover()<CR>")

-- mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>")

-- mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>")

-- mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>")

-- diagnostic
-- mapbuf("n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
vim.keymap.set("n", "go", ":lua vim.diagnostic.open_float()<CR>")
-- mapbuf("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
vim.keymap.set("n", "gp", ":lua vim.diagnostic.goto_prev()<CR>")
-- mapbuf("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
vim.keymap.set("n", "gn", ":lua vim.diagnostic.goto_next()<CR>")
-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)

-- leader + =
-- mapbuf("n", "<leader>=", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
-- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
-- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
-- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
-- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
