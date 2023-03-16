vim.opt.relativenumber = true
vim.opt.number = true

vim.diagnostic.config({ virtual_text = false })

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

--Set Splits
vim.opt.splitbelow = true

vim.opt.cursorline = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

--KEYBINDS--
local keymap = vim.keymap.set
local opts = function(desc)
	return { desc = desc, silent = true }
end

--NeoTree
keymap("n", "<leader>e", ":Neotree toggle reveal_force_cwd<CR>", opts("Toggle Neotree"))

--Open lazyGit
keymap("n", "<leader>gg", ":LazyGit<CR>", opts("Open LazyGit"))

--Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts("Move window left"))
keymap("n", "<C-j>", "<C-w>j", opts("Move window down"))
keymap("n", "<C-k>", "<C-w>k", opts("Move window up"))
keymap("n", "<C-l>", "<C-w>l", opts("Move window right"))

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts("resize"))
keymap("n", "<C-Down>", ":resize +2<CR>", opts("resize"))
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts("resize"))
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts("resize"))

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", { silent = true, desc = "Next Buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { silent = true, desc = "Previous Buffer" })

-- Clear highlights
keymap("n", "<leader>ch", "<cmd>nohlsearch<CR>", { silent = true, desc = "Clear highlights" })

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts("Delete Buffer"))

-- Better paste
keymap("v", "p", '"_dP', opts("paste"))

--Lsp Format
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", opts("FORMAT"))

--PLUGIN KEYBINDS--

--Harpoon
keymap("n", "<leader>hh", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts("Harpoon Mark"))
keymap("n", "<leader>hv", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts("Harpoon View"))
keymap("n", "<leader>ha", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", opts("Harpoon jump to file 1"))
keymap("n", "<leader>hs", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", opts("Harpoon jump to file 2"))
keymap("n", "<leader>hd", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", opts("Harpoon jump to file 3"))
keymap("n", "<leader>hf", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", opts("Harpoon jump to file 3"))

--Toggleterm
keymap("n", "<C-\\>", ":ToggleTerm size=30 direction=horizontal<CR>", opts("Toggleterm"))
keymap("t", "<C-\\>", "<C-d>")
keymap("t", "<Esc>", "<C-\\><C-n>")


--UndoTree
keymap("n", "<leader><F5>", "<cmd>UndotreeToggle<cr>", opts("Toggle UndoTree"))

--Git
keymap("n", "<leader>gs", vim.cmd.Git, opts("Git Status"))

--Move when highlighted
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

--Show unsaved diff
keymap("n", "<leader>sd", ":w !diff % -<CR>", opts("[S]how [D]iff"))

--Keep cursor in middle of window while jumping
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

--paste without losing
keymap("x", "<leader>p", "\"_dP", opts("Paste without losing text"))

--yank/delete into system clipboard
keymap("n", "<leader>y", "\"+y", opts("Yank into system clipboard"))
keymap("v", "<leader>y", "\"+y", opts("Yank into system clipboard"))
keymap("n", "<leader>Y", "\"+Y", opts("Yank into system clipboard"))

keymap("n", "<leader>d", "\"_d", opts("Delete into system clipboard"))
keymap("v", "<leader>d", "\"_d", opts("Delete into system clipboard"))

--Switch Projects
--keymap("n", "P", "<nop>")

--Quickfix
keymap("n", "<C-k>", "<cmd>cnext<cr>zz")      --??
keymap("n", "<C-j>", "<cmd>cprev<cr>zz")      --??
keymap("n", "<leader>k>", "<cmd>lnext<CR>zz") --??
keymap("n", "<leader>j>", "<cmd>lprev<CR>zz") --??

--Search and Replace
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>", opts("replace all words under cursor"))

--Lsp diagnostics
keymap('n', '<leader>d[', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true })
keymap('n', '<leader>d]', '<cmd>Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
keymap('n', '<leader>dd', "<cmd>Lspsaga show_cursor_diagnostics<CR>", { noremap = true, silent = true })
keymap('n', '<leader>dl', "<cmd>Lspsaga show_line_diagnostics<CR>", { noremap = true, silent = true })
keymap('n', '<leader>db', "<cmd>Lspsaga show_buf_diagnostics<CR>", { noremap = true, silent = true })
keymap('n', '<leader>o', "<cmd>Lspsaga outline<CR>", { noremap = true, silent = true })
