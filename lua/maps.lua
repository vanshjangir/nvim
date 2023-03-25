local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local status, telescope = pcall(require, "telescope.builtin")
if status then
	-- Telescope
	map("n", "<leader>ff", telescope.find_files)
	map("n", "<leader>fg", telescope.live_grep)
	map("n", "<leader>fb", telescope.buffers)
	map("n", "<leader>fh", telescope.help_tags)
	map("n", "<leader>fs", telescope.git_status)
	map("n", "<leader>fc", telescope.git_commits)
else
	print("Telescope not found")
end

-- <leader> = the space key

-- Save
map("i", "<C-s>", "<CMD>w<CR>")
map("n", "<leader>w", "<CMD>w<CR>")

--Save and Quit
map("n", "<leader>a", "<CMD>wq<CR>")
map("i", "<C-a>", "<CMD>wq<CR>")

--Quit without saving
map("n", "<leader>f", "<CMD>q!<CR>")
map("i", "<C-f>", "<CMD>q!<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
map("i", "<C-q>", "<CMD>q<CR>")

-- Windows
map("n", "<leader>|", "<CMD>vsplit<CR>")
map("n", "<leader>-", "<CMD>split<CR>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")

--Switching Modes
map("i", "<A-n>", "<ESC>n")
map("i", "<A-u>", "<ESC><CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("i", "<A-i>", "<ESC><CMD>w<CR><CMD>ToggleTerm size=10 direction=horizontal<CR>i")
map("t", "<A-n>", "<C-\\><C-n>")
map("t", "<A-i>", "<C-\\><C-n><CMD>ToggleTerm size=10 direction=horizontal<CR>i")

-- Markdown Preview
map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
