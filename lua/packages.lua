



---------------------------------------------------------------------------------------------------------- INSTALLED PLUGIN ---------------------------------------------------------------------------------------------------------------

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'arcticicestudio/nord-vim'

    use 'ellisonleao/gruvbox.nvim'

    use "lunarvim/darkplus.nvim"


    use 'windwp/nvim-autopairs'


    use 'nvim-tree/nvim-web-devicons' --optional, for file icons
    use 'nvim-tree/nvim-tree.lua'

    use 'nvim-lualine/lualine.nvim'






    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'nvim-treesitter/nvim-treesitter' --run = ':TSUpdate'}


    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'




end)


