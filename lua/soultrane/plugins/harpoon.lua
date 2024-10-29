return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- Add files to harpoon
    --
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():prepend()
    end, { desc = '[P]repend to harpoon' })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to harpoon' })

    -- Open harpoon
    --
    vim.keymap.set('n', '<C-h><C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon show [e]xplorer' })

    -- Select harpoon files
    --
    vim.keymap.set('n', '<C-h><C-h>', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon select first' })

    vim.keymap.set('n', '<C-h><C-j>', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon select second' })

    vim.keymap.set('n', '<C-h><C-k>', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon select third' })

    vim.keymap.set('n', '<C-h><C-l>', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon select fourth' })

    vim.keymap.set('n', '<C-h><C-n>', function()
      harpoon:list():next()
    end, { desc = '[H]arpoon select [n]ext' })

    vim.keymap.set('n', '<C-h><C-p>', function()
      harpoon:list():prev()
    end, { desc = '[H]arpoon select [p]revious' })
  end,
}
