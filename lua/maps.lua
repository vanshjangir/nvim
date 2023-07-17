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

map("n", "<A-Right>", "<C-w>l")
map("n", "<A-Left>", "<C-w>h")
map("n", "<A-Up>", "<C-w>k")
map("n", "<A-Down>", "<C-w>j")
map("n", "<A-L>", "<C-w>l")
map("n", "<A-H>", "<C-w>h")
map("n", "<A-K>", "<C-w>k")
map("n", "<A-J>", "<C-w>j")

-- Fast Navigation
map("i", "<A-j>", "<Down>")
map("i", "<A-k>", "<Up>")
map("i", "<A-h>", "<Left>")
map("i", "<A-l>", "<Right>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=70 direction=vertical<CR>")

--Switching Modes
map("i", "<A-n>", "<ESC>")
map("i", "<A-u>", "<ESC><CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("i", "<A-i>", "<ESC><CMD>ToggleTerm size=12 direction=horizontal<CR>")
map("t", "<A-n>", "<C-\\><C-n>")
map("t", "<A-i>", "<C-\\><C-n><CMD>ToggleTerm size=12 direction=horizontal<CR>")

map("i", "<A-o>", "<ESC><CMD>ToggleTerm size=70 direction=vertical<CR>")
map("t", "<A-o>", "<C-\\><C-n><CMD>ToggleTerm size=70 direction=vertical<CR>")

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

-- Barber Tabs
--
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

map("i", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("i", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("i", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("i", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("i", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("i", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("i", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("i", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("i", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("i", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)

-- Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
