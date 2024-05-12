vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>mx", ":MaximizerToggle<CR>")

-- Toggle Neotree
keymap.set("n", "<leader>e", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("Neotree close")
	else
		vim.cmd("Neotree filesystem reveal left")
	end
end, { silent = true, noremap = true })

-- close all
keymap.set("n", "<leader>qq", function()
	if vim.bo.filetype ~= "neo-tree" then
		vim.cmd("qa!")
	else
		vim.cmd("Neotree close")
		vim.cmd("qa!")
	end
end, { noremap = true, silent = true })

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {})
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {})

-- gitsigns
keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- barbar
local opts = { noremap = true, silent = true }

-- Move to previous/next
keymap.set("n", "[b", "<Cmd>BufferPrevious<CR>", opts)
keymap.set("n", "]b", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
keymap.set("n", "b<", "<Cmd>BufferMovePrevious<CR>", opts)
keymap.set("n", "b>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
keymap.set("n", "b1", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "b2", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "b3", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "b4", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "b5", "<Cmd>BufferGoto 5<CR>", opts)
keymap.set("n", "b6", "<Cmd>BufferGoto 6<CR>", opts)
keymap.set("n", "b7", "<Cmd>BufferGoto 7<CR>", opts)
keymap.set("n", "b8", "<Cmd>BufferGoto 8<CR>", opts)
keymap.set("n", "b9", "<Cmd>BufferGoto 9<CR>", opts)
keymap.set("n", "b0", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
keymap.set("n", "bp", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
keymap.set("n", "bd", "<Cmd>BufferClose<CR>", opts)
keymap.set("n", "b*d", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
