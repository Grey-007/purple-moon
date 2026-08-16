return {
	{
		"bjarneo/aether.nvim",
		priority = 1000,
		opts = {
			transparent = false,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
			},
			colors = {
				base00 = "#020007", -- background
				base01 = "#0b0714", -- lighter background (status bars)
				base02 = "#22193d", -- selection / visual
				base03 = "#6f5e94", -- comments, line numbers
				base04 = "#a08fbd", -- dark foreground
				base05 = "#dfd0f0", -- default foreground
				base06 = "#f6ebe3", -- light foreground
				base07 = "#ffffff", -- light background

				base08 = "#ee78b0", -- variables, errors (pink-magenta)
				base09 = "#f4b28d", -- numbers, constants (soft peach)
				base0A = "#e2acf0", -- types, classes (pale orchid)
				base0B = "#cf7fdd", -- strings (mauve)
				base0C = "#8fd0e6", -- regex, escapes, special (sky)
				base0D = "#b8a4ff", -- functions (periwinkle)
				base0E = "#a066e8", -- keywords (violet)
				base0F = "#9c6cd0", -- deprecated / misc
			},
			-- selection / search / diff
			on_colors = function(c)
				c.bg_visual = "#2e1f52"
				c.bg_search = "#5b3a9e"
				c.diff.change = "#1c1436"
				c.diff.text = "#3a2a6a"
			end,
		},
		config = function(_, opts)
			require("aether").setup(opts)
			-- functions / properties
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "aether",
				group = vim.api.nvim_create_augroup("purple_moon_aether", { clear = true }),
				callback = function()
					vim.api.nvim_set_hl(0, "Function", { fg = "#b8a4ff", bold = true })
					vim.api.nvim_set_hl(0, "@property", { fg = "#c9b0f0" })
					vim.api.nvim_set_hl(0, "@variable.member", { fg = "#c9b0f0" })
				end,
			})
			vim.cmd.colorscheme("aether")
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
