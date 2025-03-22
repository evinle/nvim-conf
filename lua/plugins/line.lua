return { {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', "f-person/git-blame.nvim" },
    config = function()
        local git_blame = require('gitblame')

        require('lualine').setup {
            -- options = { theme = require("neofusion.lualine") },
            sections = {
                lualine_a = {

                    'mode',
                    {
                        'buffers',
                        show_filename_only = true,       -- Shows shortened relative path when set to false.
                        hide_filename_extension = false, -- Hide filename extension when set to true.
                        show_modified_status = true,     -- Shows indicator when the buffer is modified.
                        mode = 4,
                    }
                },
                lualine_c = {
                    'filename',
                    { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }
                }
            }
        }
    end
} }
