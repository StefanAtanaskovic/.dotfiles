-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--Harpoon
keymap("n", "<leader>s", function () require("harpoon.ui").toggle_quick_menu() end)
keymap("n", "<leader>a", function () require("harpoon.mark").add_file() end)
keymap("n", "<leader>1", function () require("harpoon.ui").nav_file(1) end)
keymap("n", "<leader>2", function () require("harpoon.ui").nav_file(2) end)
keymap("n", "<leader>3", function () require("harpoon.ui").nav_file(3) end)
keymap("n", "<leader>4", function () require("harpoon.ui").nav_file(4) end)
keymap("n", "<leader>5", function () require("harpoon.ui").nav_file(5) end)

-- NvimTree
keymap("n", "<leader>n", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep hidden=true<CR>", opts)
keymap("n", "<leader>fb", ":Telescope current_buffer_fuzzy_find hidden=true<CR>", opts)
keymap("n", "<leader>fr", ":Telescope lsp_references hidden=true<CR>", opts)
