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
    use {"gruvbox-community/gruvbox"}
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
    }
    use 'ThePrimeagen/harpoon'
    use 'nvim-lua/plenary.nvim'
    use { "nvim-treesitter/nvim-treesitter" }
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0',}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'lewis6991/gitsigns.nvim'
    use 'terrortylor/nvim-comment'

    -- this is lsp and cmp stuff
    use 'neovim/nvim-lspconfig'
    use { "williamboman/mason.nvim" } -- new lsp installer

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'


    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'


    if packer_bootstrap then
        require('packer').sync()
    end
end)
