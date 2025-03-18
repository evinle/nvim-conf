return { {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = true,
    opts = {
        disable_line_numbers = false,
        integrations = {
            telescope = true
        },
        kind = "split"
    }
} }
