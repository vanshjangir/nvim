local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- <leader> = the space key

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<C-f>", "<CMD>Telescope live_grep<CR>")
map("i", "<C-f>", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")

-- Save
map("i", "<C-s>", "<CMD>w<CR>")

--Undo Redo
map("i", "<C-z>", "<CMD>u<CR>")
map("i", "<C-y>", "<CMD>redo<CR>")

-- Windows
map("n", "<leader>v", "<CMD>vsplit<CR><C-w>l")
map("n", "<leader>h", "<CMD>split<CR><C-w>j")

map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi")
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-Up>", ":m .-2<CR>==")
map("n", "<A-Down>", ":m .+1<CR>==")

map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("i", "<C-l>", "<ESC><C-w>li")
map("i", "<C-h>", "<ESC><C-w>hi")
map("i", "<C-k>", "<ESC><C-w>ki")
map("i", "<C-j>", "<ESC><C-w>ji")
map("t", "<C-l>", "<C-\\><C-n><C-w>li")
map("t", "<C-h>", "<C-\\><C-n><C-w>hi")
map("t", "<C-k>", "<C-\\><C-n><C-w>ki")
map("t", "<C-j>", "<C-\\><C-n><C-w>ji")



-- Fast Navigation
map("i", "<A-j>", "<Down>")
map("i", "<A-k>", "<Up>")
map("i", "<A-h>", "<Left>")
map("i", "<A-l>", "<Right>")
map("i", "<A-J>", "<Down><Down><Down><Down><Down>")
map("i", "<A-K>", "<Up><Up><Up><Up><Up>")
map("i", "<A-H>", "<Left><Left><Left><Left><Left>")
map("i", "<A-L>", "<Right><Right><Right><Right><Right>")

map("n", "J", "10j")
map("n", "K", "10k")
map("n", "H", "10h")
map("n", "L", "10l")

-- NeoTree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")

-- Buffer
map("n", "<leader>", ":b ")
map("n", "<leader>b", "<CMD>buffers<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=70 direction=vertical<CR>")
map("n", "<leader>tt", "<CMD>ToggleTerm size=70 direction=tab<CR>")

--Switching Modes
map("i", "<A-n>", "<ESC>")
map("t", "<A-n>", "<C-\\><C-n>")


-- Competitive Programming
map("n", "<A-w>", "<CMD>CompetiTest add_testcase<CR>")
map("n", "<A-r>", "<CMD>CompetiTest run<CR>")
map("n", "<A-R>", "<CMD>CompetiTestRunNE<CR>")
map("n", "<A-e>", "<CMD>CompetiTest edit_testcase<CR>")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
