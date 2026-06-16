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
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

--transparent background
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]






-- rest of the configuration
require('options')
