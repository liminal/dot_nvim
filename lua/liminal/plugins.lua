local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here

  use({
    'dracula/vim',
    as = 'dracula',
    config = function()
      vim.cmd('colorscheme dracula')
    end
  })

    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }


  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() 
      local ts_update = require('nvim-treesitter.install').update({with_sync = true})
      ts_update()

    end,
  }
  
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
    }


  -- use 'neovim/nvim-lspconfig'
  -- use 'ctrlpvim/ctrlp.vim'
  -- use 'preservim/vim-indent-guides'
  -- Plug 'vim-airline/vim-airline'
  -- use 'dense-analysis/ale'
  --  Quoting/parenthesizing made simple
  -- use 'tpope/vim-surround' 

  --  'a Git wrapper so awesome, it should be illegal' tpope
    use 'tpope/vim-fugitive'

  --  Vim sugar for the UNIX shell commands that need it the most.
  -- use 'tpope/vim-eunuch' 

  -- Vim Cucumber runtime files
  -- Plug 'tpope/vim-cucumber', { 'for': ['cucumber']}

  --  repeat.vim: enable repeating supported plugin maps with "."
  -- use 'tpope/vim-repeat'

  --  projectionist.vim: project configuration
  -- use 'tpope/vim-projectionist'

  --  commentary.vim: comment stuff out
  -- use 'tpope/vim-commentary'

  --  scriptease.vim: A Vim plugin for Vim plugins
  -- use 'tpope/vim-scriptease'

  --  --------------
  --  Google Plugins
  --  --------------

  --  Maktaba is a vimscript plugin library. It is designed for plugin authors.
  -- use 'google/vim-maktaba'

  --  codefmt is a utility for syntax-aware code formatting. It contains several
  --  built-in formatters, and allows new formatters to be registered by other plugins.
  -- use 'google/vim-codefmt'

  --  Glaive is a utility for configuring maktaba plugins
  -- use 'google/vim-glaive'


  --  ------------
  --  General Text
  --  ------------

  --  Vim script for text filtering and alignment
  -- use 'godlygeek/tabular' 


  --  -----------------
  --  Automatic Helpers
  --  -----------------

  --  EditorConfig plugin for Vim http://editorconfig.org
  -- use 'editorconfig/editorconfig-vim'

  --  Always highlight enclosing xml/html tags
  -- use 'Valloric/MatchTagAlways' 


  -- Plug 'ryanoasis/vim-devicons'


  --  Changes Vim working directory to project root
  -- use 'airblade/vim-rooter'

  --  fallthroug support for many languages
  -- use 'sheerun/vim-polyglot'

  -- END

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
