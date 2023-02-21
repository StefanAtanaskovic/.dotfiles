return {
	{ "catppuccin/nvim", name = "catppuccin",
    config= function()
        vim.cmd.colorscheme [[catppuccin-macchiato]]
    end},
     { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  config = function ()
    require("nvim-tree").setup()
    end
}
}
