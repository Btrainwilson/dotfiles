local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'coder/claudecode.nvim' }

require('claudecode').setup {}

local map = vim.keymap.set
-- <leader>c* prefix avoids clashing with harpoon's <leader>a
map('n', '<leader>cc', '<cmd>ClaudeCode<cr>',           { desc = '[C]laude: toggle' })
map('n', '<leader>cf', '<cmd>ClaudeCodeFocus<cr>',      { desc = '[C]laude: focus' })
map('n', '<leader>cb', '<cmd>ClaudeCodeAdd %<cr>',      { desc = '[C]laude: add current buffer' })
map('v', '<leader>cs', '<cmd>ClaudeCodeSend<cr>',       { desc = '[C]laude: send selection' })
map('n', '<leader>cr', '<cmd>ClaudeCodeDiffAccept<cr>', { desc = '[C]laude: accept diff' })
map('n', '<leader>cn', '<cmd>ClaudeCodeDiffDeny<cr>',   { desc = '[C]laude: deny diff' })
