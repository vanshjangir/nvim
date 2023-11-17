local status, toggleterm = pcall(require, "toggleterm")

if not status then
	return
end

toggleterm.setup({
	size = 13,
	open_mapping = [[<F7>]],
	shading_factor = 1,
	hide_numbers = true,
	direction = "horizontal",
	float_opts = {
		border = "curved",
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})
