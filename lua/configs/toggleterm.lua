local status, toggleterm = pcall(require, "toggleterm")

if not status then
	return
end

toggleterm.setup({
	size = 15,
	open_mapping = [[<F7>]],
	shading_factor = -100,
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
