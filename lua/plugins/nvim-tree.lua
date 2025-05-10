local HEIGHT_RATIO = 0.9 -- You can change this
local WIDTH_RATIO = 0.9  -- You can change this too

return {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = {
        filters = {
            dotfiles = false,
            exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
        },
        disable_netrw = true,
        hijack_netrw = true,
        hijack_cursor = true,
        hijack_unnamed_buffer_when_opening = false,
        sync_root_with_cwd = false,
        update_cwd = false,
        update_focused_file = {
            enable = true,
            update_root = false,
        },
        view = {
            centralize_selection = true,
            cursorline = true,
            debounce_delay = 15,
            side = "left",
            preserve_window_proportions = false,
            number = true,
            relativenumber = true,
            signcolumn = "yes",
            width = 30,
            float = {
                enable = true
            },
        },
        git = {
            enable = true,
            ignore = true,
        },
        filesystem_watchers = {
            enable = true,
        },
        actions = {
            open_file = {
                resize_window = true,
            },
        },
        renderer = {
            root_folder_label = false,
            highlight_git = true,
            highlight_opened_files = "none",

            indent_markers = {
                enable = false,
            },

            icons = {
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },

                glyphs = {
                    default = "󰈚",
                    symlink = "",
                    folder = {
                        default = "",
                        empty = "",
                        empty_open = "",
                        open = "",
                        symlink = "",
                        symlink_open = "",
                        arrow_open = "",
                        arrow_closed = "",
                    },
                    git = {
                        unstaged = "✗",
                        staged = "✓",
                        unmerged = "",
                        renamed = "➜",
                        untracked = "★",
                        deleted = "",
                        ignored = "◌",
                    },
                },
            },
        },
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)
    end,
}
