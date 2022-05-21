call plug#begin('~/.config/nvim/pluged')
" NERDTREE
Plug 'preservim/nerdtree'
" COLORSCHEME GRUVBOX
Plug 'gruvbox-community/gruvbox'
" TELESCOPE
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" TREESITTER
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" LSP STUFF
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
" AUTO PAIR STUFF
Plug 'windwp/nvim-autopairs'
" COMMENTING
Plug 'tpope/vim-commentary'
" MOST AWESOME THING
Plug 'ThePrimeagen/harpoon'
" CMP PLUGINS
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

"tabline
Plug 'ojroques/nvim-hardline'

" Git signs on the left to see what is changed and stuff
Plug 'lewis6991/gitsigns.nvim'
" linter support
Plug 'jose-elias-alvarez/null-ls.nvim'
call plug#end()

"SET COLORSCHEME
colorscheme gruvbox
" FOR TRANSPARENT BACKGROUND
hi Normal guibg=NONE ctermbg=NONE
" LEADER MAPPING
let mapleader = " "

" LOAD LUA CONFIGS FOR PLUGINS
lua require("stefan")
" TREESITTER SETUP DONT TOUCH THIS
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
" SIMPLE AUTOPARIS SETTUP
lua require('nvim-autopairs').setup{}

lua << EOF
-- error message settings
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
})

-- setup the linters
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.flake8,
        require("null-ls").builtins.diagnostics.cppcheck,
        require("null-ls").builtins.diagnostics.eslint,
    },
})
EOF
