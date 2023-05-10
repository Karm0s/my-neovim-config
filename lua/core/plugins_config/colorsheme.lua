vim.o.termguicolors = true
vim.cmd [[ colorscheme catppuccin]]

require('catppuccin').setup{
    flavour = 'mocha',
    transparent_background = true
}
