return {
	"goolord/alpha-nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local dashboard = require "alpha.themes.dashboard"
		dashboard.section.header.val = {
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[@@@@@@@  @@@@@@@@  @@@  @@@   @@@@@@   @@@@@@@    @@@@@@   @@@       @@@   @@@@@@   ]],
			[[@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@       @@@  @@@@@@@   ]],
			[[  @@!    @@!       @@!  !@@  @@!  @@@  @@!  @@@  @@!  @@@  @@!       @@!  !@@       ]],
			[[  !@!    !@!       !@!  @!!  !@!  @!@  !@!  @!@  !@!  @!@  !@!       !@!  !@!       ]],
			[[  @!!    @!!!:!     !@@!@!   @!@  !@!  @!@@!@!   @!@  !@!  @!!       !!@  !!@@!!    ]],
			[[  !!!    !!!!!:      @!!!    !@!  !!!  !!@!!!    !@!  !!!  !!!       !!!   !!@!!!   ]],
			[[  !!:    !!:        !: :!!   !!:  !!!  !!:       !!:  !!!  !!:       !!:       !:!  ]],
			[[  :!:    :!:       :!:  !:!  :!:  !:!  :!:       :!:  !:!  :!:       :!:      !:!   ]],
			[[  :.:    :: ::::   ::    ::   ::::::   ::         :::::::  :: ::::   ::  :::: ::    ]],
			[[   :     : :: ::    :    :     : :     :            : :    : :: : :  :   :: : :     ]],
		}
		dashboard.section.buttons.val = {
			dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("p", " " .. " Find project",
				":lua require('telescope').extensions.projects.projects()<CR>"),
			dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>"),
		}
		local function footer()
			return "not today asshole"
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		require 'alpha'.setup(dashboard.opts)
	end
}
