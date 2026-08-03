local gh = function(repo) return 'https://github.com/' .. repo end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add { gh 'stevearc/oil.nvim' }

require('oil').setup {
  default_file_explorer = true,
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ['g.'] = 'actions.toggle_hidden',
    ['<C-s>'] = false,
  },
}

vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory (oil)' })
