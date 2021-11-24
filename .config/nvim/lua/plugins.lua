return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin

  use 'nvim-lualine/lualine.nvim'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'simrat39/rust-tools.nvim'
  -- Debugging (needs plenary from above as well)
  use 'mfussenegger/nvim-dap'

  -- common
  use 'tpope/vim-fugitive' -- Git commands

  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- themes
  use {'dracula/vim', as = 'dracula'}
  use 'doums/darcula' -- Jetbrains Darcula
  use 'Mofiqul/vscode.nvim'
end)
