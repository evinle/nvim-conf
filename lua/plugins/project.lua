return {
    "ahmedkhalf/project.nvim",
    dependencies = {
        'nvim-telescope/telescope.nvim'
    },
    config = function()
        require("project_nvim").setup {
            patterns = { "src", "package.json" },
            detection_methods = { "pattern" },
            slient_chdir = false
        }
        local telescope = require('telescope')
        telescope.load_extension('projects')

        vim.keymap.set('n', '<leader>fp', telescope.extensions.projects.projects)
    end
}
