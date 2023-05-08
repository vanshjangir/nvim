local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local status, telescope = pcall(require, "telescope.builtin")
if status then
	-- Telescope
	map("n", "<A-F>", telescope.find_files)
	map("n", "<A-f>", telescope.live_grep)
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

--Undo Redo
map("i", "<C-z>", "<CMD>u<CR>")
map("i", "<C-y>", "<CMD>redo<CR>")

-- Windows
map("n", "<leader>v", "<CMD>vsplit<CR><C-w>l")
map("n", "<leader>h", "<CMD>split<CR><C-w>j")
map("n", "<A-Right>", "<C-w>l")
map("n", "<A-Left>", "<C-w>h")
map("n", "<A-Up>", "<C-w>k")
map("n", "<A-Down>", "<C-w>j")
map("n", "<A-l>", "<C-w>l")
map("n", "<A-h>", "<C-w>h")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-j>", "<C-w>j")


map("i", "<A-Right>", "<ESC><C-w>li")
map("i", "<A-Left>", "<ESC><C-w>hi")
map("i", "<A-Up>", "<ESC><C-w>ki")
map("i", "<A-Down>", "<ESC><C-w>ji")
map("i", "<A-l>", "<ESC><C-w>li")
map("i", "<A-h>", "<ESC><C-w>hi")
map("i", "<A-k>", "<ESC><C-w>ki")
map("i", "<A-j>", "<ESC><C-w>ji")



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
map("i", "<A-u>", "<ESC><CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("i", "<A-i>", "<ESC><CMD>w<CR><CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("t", "<A-n>", "<C-\\><C-n>")
map("t", "<A-i>", "<C-\\><C-n><CMD>ToggleTerm size=12 direction=horizontal<CR>i")

map("i", "<A-n>", "<ESC>n")
map("i", "<A-y>", "<ESC><CMD>ToggleTerm size=70 direction=vertical<CR>")
map("i", "<A-o>", "<ESC><CMD>w<CR><CMD>ToggleTerm size=70 direction=vertical<CR>")
map("t", "<A-n>", "<C-\\><C-n>")
map("t", "<A-o>", "<C-\\><C-n><CMD>ToggleTerm size=70 direction=vertical<CR>i")


-- Markdown Preview
map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")


-- Competitive Programming
map("n", "<A-w>", "<CMD>CompetiTestAdd<CR>")
map("n", "<A-r>", "<CMD>CompetiTestRun<CR>")
map("n", "<A-R>", "<CMD>CompetiTestRunNE<CR>")
map("n", "<A-e>", "<CMD>CompetiTestEdit<CR>")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
