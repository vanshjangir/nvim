local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- <leader> = the space key

-- Telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<C-f>", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")

-- Save
map("i", "<C-s>", "<CMD>w<CR>")
map("n", "<leader>w", "<CMD>w<CR>")

-- Save and Quit
map("n", "<leader>a", "<CMD>wq<CR>")
map("i", "<C-a>", "<CMD>wq<CR>")

-- Quit without saving
map("n", "<leader>f", "<CMD>q!<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
map("i", "<C-q>", "<CMD>q<CR>")

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
map("i", "<C-l>", "<C-w>l")
map("i", "<C-h>", "<C-w>h")
map("i", "<C-k>", "<C-w>k")
map("i", "<C-j>", "<C-w>j")



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

-- Minimap
map("n", "<A-m>", "<CMD>MinimapToggle<CR>")

-- NeoTree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
map("n", "<leader>o", "<CMD>NvimTreeFocus<CR>")

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=70 direction=vertical<CR>")

--Switching Modes
map("i", "<A-n>", "<ESC>")
map("i", "<A-u>", "<ESC><CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("t", "<A-n>", "<C-\\><C-n>")

map("i", "<A-o>", "<ESC><CMD>ToggleTerm size=70 direction=vertical<CR>")
map("t", "<A-o>", "<C-\\><C-n><CMD>ToggleTerm size=70 direction=vertical<CR>")

-- Markdown Preview
map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

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

-- Bufferline Tabs

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLineGoToBuffer -1<CR>", opts)

map("i", "<A-1>", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
map("i", "<A-2>", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
map("i", "<A-3>", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
map("i", "<A-4>", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
map("i", "<A-5>", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
map("i", "<A-6>", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
map("i", "<A-7>", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
map("i", "<A-8>", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
map("i", "<A-9>", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
map("i", "<A-0>", "<Cmd>BufferLineGoToBuffer -1<CR>", opts)

-- Close buffer
map("n", "<A-c>", "<Cmd>bdelete<CR>", opts)

