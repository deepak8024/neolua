local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- cmd('syntax on')

-- Better editor UI
--
o.number = true
o.numberwidth = 2
o.relativenumber = false
o.cursorline = false

-- Better editing experience
o.expandtab = true

-- o.autoindent = false
o.smartindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4 -- If negative, shiftwidth value is used
o.list = true
--o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

o.mouse = nicr

--colorsheme 
o.termguicolors = true
o.background = 'dark' -- or light if you want light mode
cmd('colorscheme gruvbox')
--g.airline_theme = 'base16_gruvbox_dark_medium'

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50


-- Preserve view while jumping
o.jumpoptions = 'view'

-- Stable buffer content on window open/close events.
o.splitkeep = 'screen'

--vim.opt.diffopt:append('linematch:60')

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '

-- mapping <Esc> for normal mode while terminal session
cmd [[
    :tnoremap <Esc> <C-\><C-n>


]]
