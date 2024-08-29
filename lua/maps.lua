local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs)
end

map("n", "<leader>F", "<CMD>Telescope find_files<CR>")
map("n", "<leader>G", "<CMD>Telescope git_files<CR>")
map("n", "<leader>f", "<CMD>Telescope current_buffer_fuzzy_find<CR>")
map("n", "<leader>ll", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>d", "<CMD>Telescope buffers<CR>")
map("n", "<leader>h", "<CMD>Telescope help_tags<CR>")

map("v", "<A-Up>", ":m '<-2<CR>gv=gv")
map("v", "<A-Down>", ":m '>+1<CR>gv=gv")

map("n", "<Tab>", "<CMD>:b #<CR>")
map("i", "<A-j>", "<Down>")
map("i", "<A-k>", "<Up>")
map("i", "<A-h>", "<Left>")
map("i", "<A-l>", "<Right>")
map("n", "J", "10j")
map("n", "K", "10k")
map("n", "H", "10h")
map("n", "L", "10l")

map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")

map("n", "<leader>th", "<CMD>ToggleTerm size=13 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=70 direction=vertical<CR>")
map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>")
map("n", "<leader>tt", "<CMD>ToggleTerm direction=tab<CR>")

map("i", "<A-n>", "<ESC>")
map("t", "<A-n>", "<C-\\><C-n>")

map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
