local keymap = vim.keymap

-- Do not yank with x
keymap.set({ 'n', 'x' }, 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Switching relative number
keymap.set('n', '<F5>', ':set invrelativenumber<CR>', { silent = true })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Close tab
keymap.set('n', 'tq', ':bd<cr>')

-- Save and Close
keymap.set('n', '<leader>w', '<Cmd>w<cr>')
keymap.set('n', '<leader>q', '<Cmd>q<cr>')

-- Copy and Pastek
keymap.set({ 'n', 'x' }, 'cp', '"+y')
keymap.set({ 'n', 'x' }, 'cv', '"+p')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '-<left>', '<C-w>h')
keymap.set('', '-<up>', '<C-w>k')
keymap.set('', '-<down>', '<C-w>j')
keymap.set('', '-<right>', '<C-w>l')
keymap.set('', '-h', '<C-w>h')
keymap.set('', '-k', '<C-w>k')
keymap.set('', '-j', '<C-w>j')
keymap.set('', '-l', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
