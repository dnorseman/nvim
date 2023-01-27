local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fo', builtin.vim_options, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').setup{
  defaults = {
    sorting_strategy = 'ascending',
    layout_strategy = 'horizontal',
    layout_config = {
        height = .80,
        width = .80,
        prompt_position = 'top',
    },
    layout_defaults = {
        horizontal = {
            preview_width = 0.6,
        },
    },
  },
  extensions = {
    -- ...
  }
}
