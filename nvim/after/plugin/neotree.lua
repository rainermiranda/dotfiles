vim.keymap.set("n",'<C-b>','<Cmd>Neotree toggle<CR>')



-- Adds the index number of a file that has benn marked with Harpoon
      require("neo-tree").setup({
        filesystem = {
          components = {
            harpoon_index = function(config, node, state)
              local Marked = require("harpoon.mark")
              local path = node:get_id()
              local succuss, index = pcall(Marked.get_index_of, path)
              if succuss and index and index > 0 then
                return {
                  text = string.format(" ⥤ %d", index), -- <-- Add your favorite harpoon like arrow here
                  highlight = config.highlight or "NeoTreeDirectoryIcon",
                }
              else
                return {}
              end
            end
          },
          renderers = {
           file = {
             {"icon"},
             {"name", use_git_status_colors = true},
             {"harpoon_index"}, --> This is what actually adds the component in where you want it
             {"diagnostics"},
             {"git_status", highlight = "NeoTreeDimText"},
           }
          }
        },
      })

-- Switch between filesystem, buffers and git_status
require('neo-tree').setup({
  window = {
    mappings = {
      ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
      ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
      ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
    },
  },
})
