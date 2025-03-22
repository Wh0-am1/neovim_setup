return {
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup({
                theme = "hyper",
                config = {
                    header = {
                        [[                                                                       ]],
                        [[                                                                       ]],
                        [[                                                                       ]],
                        [[                                                                       ]],
                        [[                                                                     ]],
                        [[       ████ ██████           █████      ██                     ]],
                        [[      ███████████             █████                             ]],
                        [[      █████████ ███████████████████ ███   ███████████   ]],
                        [[     █████████  ███    █████████████ █████ ██████████████   ]],
                        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
                        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
                        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
                        [[                                                                       ]],
                        [[                                                                       ]],
                        [[                                                                       ]],
                    },
                    week_header = {
                        enable = false,
                    },
                    shortcut = {
                        { desc = "🔍 Find File", group = "@keyword", action = "Telescope find_files", key = "f" },
                        { desc = "📄 New File", group = "@keyword", action = "ene | startinsert", key = "n" },
                        { desc = "🚪 Quit", group = "@keyword", action = "qa", key = "q" },
                    },
                    packages = { enable = true }, -- Show number of plugins loaded
                    project = { enable = true, limit = 5 }, -- Show recent projects
                    footer = {
                        [[            _ _         __    __           _     _   _ ]],
                        [[  /\  /\___| | | ___   / / /\ \ \___  _ __| | __| | / \]],
                        [[ / /_/ / _ \ | |/ _ \  \ \/  \/ / _ \| '__| |/ _` |/  /]],
                        [[/ __  /  __/ | | (_) |  \  /\  / (_) | |  | | (_| /\_/ ]],
                        [[\/ /_/ \___|_|_|\___/    \/  \/ \___/|_|  |_|\__,_\/   ]],
                    }, -- Custom footer
                },
            })
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
    },
}
