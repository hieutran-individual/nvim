MAP = vim.api.nvim_set_keymap

-- better window movement
MAP("n", "<C-h>", "<C-w>h", {silent = true})
MAP("n", "<C-j>", "<C-w>j", {silent = true})
MAP("n", "<C-k>", "<C-w>k", {silent = true})
MAP("n", "<C-l>", "<C-w>l", {silent = true})

-- resize with arrows
if vim.fn.has "mac" == 1 then
    MAP("n", "<A-Up>", ":resize -2<CR>", {silent = true})
    MAP("n", "<A-Down>", ":resize +2<CR>", {silent = true})
    MAP("n", "<A-Left>", ":vertical resize -2<CR>", {silent = true})
    MAP("n", "<A-Right>", ":vertical resize +2<CR>", {silent = true})
else
    MAP("n", "<C-Up>", ":resize -2<CR>", {silent = true})
    MAP("n", "<C-Down>", ":resize +2<CR>", {silent = true})
    MAP("n", "<C-Left>", ":vertical resize -2<CR>", {silent = true})
    MAP("n", "<C-Right>", ":vertical resize +2<CR>", {silent = true})
end

-- better indenting
MAP("v", "<", "<gv", {noremap = true, silent = true})
MAP("v", ">", ">gv", {noremap = true, silent = true})

-- Tab switch buffer
MAP("n", "<TAB>", ":bnext<CR>", {noremap = true, silent = true})
MAP("n", "<S-TAB>", ":bprevious<CR>", {noremap = true, silent = true})

-- Move current line / block with Alt-j/k ala vscode.
MAP("n", "<A-j>", ":m .+1<CR>==", {noremap = true, silent = true})
MAP("n", "<A-k>", ":m .-2<CR>==", {noremap = true, silent = true})
MAP("i", "<A-j>", "<Esc>:m .+1<CR>==gi", {noremap = true, silent = true})
MAP("i", "<A-k>", "<Esc>:m .-2<CR>==gi", {noremap = true, silent = true})
MAP("x", "<A-j>", ":m '>+1<CR>gv-gv", {noremap = true, silent = true})
MAP("x", "<A-k>", ":m '<-2<CR>gv-gv", {noremap = true, silent = true})

-- QuickFix
MAP("n", "]q", ":cnext<CR>", { noremap = true, silent = true })
MAP("n", "[q", ":cprev<CR>", { noremap = true, silent = true })

-- Better nav for omnicomplete
vim.cmd 'inoremap <expr> <c-j> ("\\<C-n>")'
vim.cmd 'inoremap <expr> <c-k> ("\\<C-p>")'

vim.cmd 'vnoremap p "0p'
vim.cmd 'vnoremap P "0P'

MAP("", "<C-q>", ":call QuickFixToggle()<CR>", { noremap = true, silent = true })