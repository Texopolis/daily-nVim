-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'stevearc/oil.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		'barrett-ruth/live-server.nvim',
		build = 'pnpm add -g live-server',
		cmd = { 'LiveServerStart', 'LiveServerStop' },
		config = true
	},
	{ 'github/copilot.vim' }
}
