return {
    "LunarVim/breadcrumbs.nvim",
    dependencies = {
        { "SmiteshP/nvim-navic" },
    },
    config = function()
        require("nvim-navic").setup {
            lsp = {
                auto_attach = true,
            },
            highlight = true,
            depth_limit = 6
        }
        require("breadcrumbs").setup()

        vim.api.nvim_set_hl(0, "NavicText", { bg = "none" })
        vim.api.nvim_set_hl(0, "NavicSeparator", { bg = "none" })
    end

}
