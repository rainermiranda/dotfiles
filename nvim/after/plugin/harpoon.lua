local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

-- Add file to harpoon
vim.keymap.set("n","<leader>a", mark.add_file)

-- Toggle quick menu
vim.keymap.set("n","<C-e>", ui.toggle_quick_menu)

-- Add shortcut to navigate between files
vim.keymap.set("n","<C-u>", function() ui.nav_file(1) end)
vim.keymap.set("n","<C-i>", function() ui.nav_file(2) end)
vim.keymap.set("n","<C-o>", function() ui.nav_file(3) end)
vim.keymap.set("n","<C-p>", function() ui.nav_file(4) end)
