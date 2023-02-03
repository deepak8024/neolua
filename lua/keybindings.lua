-----------------------------------------------------------------------------------------------------------VIM COMMANDS------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------ KEYMAPPING -------------------------------------------------------------------------------------------------------------------
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end
-- terminal shortcut 
--


map('n', '<SPACE>', '<Nop>')


-- Save on Ctrl-s
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', '<Esc>:wa<CR>')



--split navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')

--split resizing
map('n', '<C-Left>',  ':vertical resize +3<CR>')
map('n', '<C-Right>', ':vertical resize -3<CR>')
map('n', 'C-+', ':ToggleTerm dir = float size +=3<CR>')

-- upper tab navigation
map('n', 'H', 'gT')
map('n', 'L', 'gt')


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



local function nkeymap(k, map)
  vim.api.nvim_set_keymap('n', k, map, { noremap = true })
end
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')







-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
--map('n', 'N', 'Nzz')

-- Mimic shell movements
map('i', '<C-E>', '<C-o>$')
map('i', '<C-A>', '<C-o>^')

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')

map('n', '<leader>e', ':NvimTreeToggle<CR>')

map('n', '<Leader>tt', ':vnew term://bash<CR>')
