return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        file_ignore_patterns = { "node_modules", ".git" },
    },
    config = function()
        local builtin = require('telescope.builtin')


        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fe', builtin.diagnostics, { desc = 'Telescope diagnostics' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope keys' })
        vim.keymap.set({ 'v', 'n' }, '<leader>fs', function() vim.lsp.buf.workspace_symbol() end,
            { desc = 'Telescope find files' })
        local actions = require("telescope.actions")

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = { -- Insert mode mappings
                        ["<C-d>"] = actions.delete_buffer,
                    },
                    n = { -- Normal mode mappings
                        ["<C-d>"] = actions.delete_buffer,
                    },
                },
                layout_config = {
                    vertical = {
                        width = 0.9, height = 0.7, prompt_position = 'top'
                    }
                },
                layout_strategy = 'vertical'
            },
        })
    end
}
