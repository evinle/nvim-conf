return {
    {
        'mfussenegger/nvim-dap',
        keys = {
            { "<leader>bP", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
            { "<leader>bp", function() require("dap").toggle_breakpoint() end,                                    desc = "Toggle Breakpoint" },
            { "<leader>dc", function() require("dap").continue() end,                                             desc = "Run/Continue" },
            { "<leader>da", function() require("dap").continue({ before = get_args }) end,                        desc = "Run with Args" },
            { "<leader>dC", function() require("dap").run_to_cursor() end,                                        desc = "Run to Cursor" },
            { "<leader>dg", function() require("dap").goto_() end,                                                desc = "Go to Line (No Execute)" },
            { "<leader>di", function() require("dap").step_into() end,                                            desc = "Step Into" },
            { "<leader>dj", function() require("dap").down() end,                                                 desc = "Down" },
            { "<leader>dk", function() require("dap").up() end,                                                   desc = "Up" },
            { "<leader>dl", function() require("dap").run_last() end,                                             desc = "Run Last" },
            { "<leader>do", function() require("dap").step_out() end,                                             desc = "Step Out" },
            { "<leader>dO", function() require("dap").step_over() end,                                            desc = "Step Over" },
            { "<leader>dP", function() require("dap").pause() end,                                                desc = "Pause" },
            { "<leader>dr", function() require("dap").repl.toggle() end,                                          desc = "Toggle REPL" },
            { "<leader>ds", function() require("dap").session() end,                                              desc = "Session" },
            { "<leader>dt", function() require("dap").terminate() end,                                            desc = "Terminate" },
            { "<leader>dw", function() require("dap.ui.widgets").hover() end,                                     desc = "Widgets" },
        },
        config = function()
            local dap = require('dap')
            -- dap.setup()

            dap.adapters.chrome = {
                type = "executable",
                command = "node",
                args = { os.getenv("USERPROFILE") .. "\\AppData\\Local\\nvim\\utils\\debug\\vscode-chrome-debug\\out\\src\\chromeDebug.js" }
            }

            dap.configurations.javascript = { -- change this to javascript if needed
                {
                    name = "MCT JS",
                    type = "chrome",
                    -- request = "attach",
                    request = "launch",
                    -- program = "${file}",
                    url = "http://localhost:4200",
                    -- cwd = vim.fn.getcwd(),
                    sourceMaps = true,
                    -- protocol = "inspector",
                    -- port = 4200,
                    -- webRoot = "${workspaceFolder}"
                }
            }

            dap.configurations.typescript = { -- change to typescript if needed
                {
                    name = "MCT TS",
                    type = "chrome",
                    -- request = "attach",
                    request = "attach",
                    -- program = "${file}",
                    cwd = "C:\\scpt\\supply-chain-planning-tool\\angular-workspace",
                    url = "http://localhost:4200/",
                    sourceMaps = true,
                    -- protocol = "inspector",
                    -- port = 4200,
                    -- webRoot = "${workspaceFolder}"
                }
            }
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "folke/lazydev.nvim" },
        config = function()
            require("lazydev").setup({
                library = { "nvim-dap-ui" },
            })

            local dapui = require('dapui')
            dapui.setup {}

            vim.keymap.set("n", "<leader>db", dapui.toggle)
            -- vim.keymap.set("n", "<leader>db", dapui.open)
        end
    }
}
