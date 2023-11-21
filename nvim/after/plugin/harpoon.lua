local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

-- Add file to harpoon
vim.keymap.set("n","<leader>a", mark.add_file)

-- Toggle quick menu
vim.keymap.set("n","<C-e>", ui.toggle_quick_menu)

-- Add shortcut to navigate between files
vim.keymap.set("n","<F1>", function() ui.nav_file(1) end)
vim.keymap.set("n","<F2>", function() ui.nav_file(2) end)
vim.keymap.set("n","<F3>", function() ui.nav_file(3) end)
vim.keymap.set("n","<F4>", function() ui.nav_file(4) end)
