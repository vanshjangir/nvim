local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- <leader> = the space key

-- Telescope
map("n", "<leader>F", "<CMD>Telescope find_files<CR>")
map("n", "<leader>ff", "<CMD>Telescope current_buffer_fuzzy_find<CR>")
map("n", "<leader>ll", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>d", "<CMD>Telescope buffers<CR>")
map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")

--Undo Redo
map("i", "<C-z>", "<CMD>u<CR>")
map("i", "<C-y>", "<CMD>redo<CR>")

-- line
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi")
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-Up>", ":m .-2<CR>==")
map("n", "<A-Down>", ":m .+1<CR>==")

-- Fast Navigation
map("i", "<A-j>", "<Down>")
map("i", "<A-k>", "<Up>")
map("i", "<A-h>", "<Left>")
map("i", "<A-l>", "<Right>")
map("i", "<A-J>", "<Down><Down><Down><Down><Down>")
map("i", "<A-K>", "<Up><Up><Up><Up><Up>")
map("i", "<A-H>", "<Left><Left><Left><Left><Left>")
map("i", "<A-L>", "<Right><Right><Right><Right><Right>")

map("n", "<Tab>", "<CMD>:b #<CR>")
map("n", "J", "10j")
map("n", "K", "10k")
map("n", "H", "10h")
map("n", "L", "10l")

-- NvimTree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")

-- windows
map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("i", "<C-l>", "<ESC><C-w>l")
map("i", "<C-h>", "<ESC><C-w>h")
map("i", "<C-k>", "<ESC><C-w>k")
map("i", "<C-j>", "<ESC><C-w>j")


-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=13 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=70 direction=vertical<CR>")
map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>")
map("n", "<leader>tt", "<CMD>ToggleTerm direction=tab<CR>")
map("t", "<C-l>", "<C-\\><C-n><C-w>l")
map("t", "<C-h>", "<C-\\><C-n><C-w>h")
map("t", "<C-j>", "<C-\\><C-n><C-w>j")
map("t", "<C-k>", "<C-\\><C-n><C-w>k")

--Switching Modes
map("i", "<A-n>", "<ESC>")
map("t", "<A-n>", "<C-\\><C-n>")

-- Competitive Programming
map("n", "<A-w>", "<CMD>CompetiTest add_testcase<CR>")
map("n", "<A-r>", "<CMD>CompetiTest run<CR>")
map("n", "<A-e>", "<CMD>CompetiTest edit_testcase<CR>")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
