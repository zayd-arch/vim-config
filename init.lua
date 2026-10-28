--color theming
vim.pack.add({
    {src="https://github.com/rebelot/kanagawa.nvim", name="kanagawa"},
})
vim.cmd("colorscheme kanagawa-wave")

-- comenting with lua
--manson third oarty app for the lsp 
vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim", name = "mason" },
})

--neotree
vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/romgrk/barbar.nvim",


  'https://github.com/nvim-tree/nvim-web-devicons',
  "https://github.com/nvim-lualine/lualine.nvim"

  })
vim.pack.add({
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.*') },
})

require('blink.cmp').setup({
  keymap = { preset = 'default' },
  sources = { default = { 'lsp', 'path', 'buffer' } },
})

require('lualine').setup()



require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

vim.opt.clipboard = "unnamedplus"
--transparent background
--vim.cmd [[
--  highlight Normal guibg=none
  --highlight NonText guibg=none
  --highlight Normal ctermbg=none
 -- highlight NonText ctermbg=none
--]]













