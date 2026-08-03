local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'ThePrimeagen/harpoon', version = 'harpoon2' } }

local harpoon = require 'harpoon'
harpoon:setup()

local map = vim.keymap.set
map('n', '<leader>a',  function() harpoon:list():add() end,                            { desc = 'H[a]rpoon: pin file' })
map('n', '<C-e>',      function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,    { desc = 'Harpoon: menu' })
map('n', '<leader>e',  function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,    { desc = 'Harpoon: m[e]nu' })
map('n', '<C-h>',      function() harpoon:list():select(1) end,                        { desc = 'Harpoon: slot 1' })
map('n', '<C-j>',      function() harpoon:list():select(2) end,                        { desc = 'Harpoon: slot 2' })
map('n', '<C-k>',      function() harpoon:list():select(3) end,                        { desc = 'Harpoon: slot 3' })
map('n', '<C-l>',      function() harpoon:list():select(4) end,                        { desc = 'Harpoon: slot 4' })
map('n', '<leader>hp', function() harpoon:list():prev() end,                           { desc = '[H]arpoon: [p]rev' })
map('n', '<leader>hn', function() harpoon:list():next() end,                           { desc = '[H]arpoon: [n]ext' })
