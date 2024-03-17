local wezterm = require("wezterm")

local gruvbox_material_colors = {
	-- Darker colors
	bg0_hard = "#1d2021",
	bg0 = "#282828",
	bg1 = "#3c3836",
	bg2 = "#504945",
	bg3 = "#665c54",
	bg4 = "#7c6f64",

	gray = "#928374",

	fg0 = "#fbf1c7",
	fg1 = "#ebdbb2",
	fg2 = "#d5c4a1",
	fg3 = "#bdae93",
	fg4 = "#a89984",

	-- Brighter colors
	bg_green = "#b8bb26",
	bg_yellow = "#fabd2f",
	bg_blue = "#83a598",
	bg_purple = "#d3869b",
	bg_aqua = "#8ec07c",
	bg_orange = "#fe8019",
	bg_red = "#fb4934",

	fg_green = "#b8bb26",
	fg_yellow = "#fabd2f",
	fg_blue = "#83a598",
	fg_purple = "#d3869b",
	fg_aqua = "#8ec07c",
	fg_orange = "#fe8019",
	fg_red = "#fb4934",
}

local colors = {
	transparent = "#00000000",
	white = "#ffffff",
	black = "#000000",
}

for k, v in pairs(gruvbox_material_colors) do
	colors[k] = v
end

local config = wezterm.config_builder()

config.color_scheme = "Gruvbox Material (Gogh)"

-- fonts
config.font = wezterm.font("CascadiaCode", {
	-- weight = "Light",
})
config.font_size = 9
config.line_height = 1.2
config.cell_width = 1

-- window frame
config.window_frame = {
	font = wezterm.font("CascadiaCode", {
		weight = "Bold",
		italic = true,
	}),
	font_size = 9,

	-- border
	border_left_width = 1,
	border_right_width = 1,
	border_bottom_height = 1,
	border_top_height = 1,

	-- border color
	border_left_color = "gray",
	border_right_color = "gray",
	border_bottom_color = "gray",
	border_top_color = "gray",

	-- pane colors
	inactive_titlebar_bg = colors.bg0,
	active_titlebar_bg = colors.bg1,
	inactive_titlebar_fg = colors.fg0,
	active_titlebar_fg = colors.fg_green,
	inactive_titlebar_border_bottom = colors.bg0,
	active_titlebar_border_bottom = colors.bg1,
	button_fg = colors.fg1,
	button_bg = colors.bg1,
	button_hover_fg = colors.bg_purple,
	button_hover_bg = colors.bg1,
}

config.integrated_title_buttons = { "Close" }

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_decorations = "RESIZE"

return config
