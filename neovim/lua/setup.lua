require("auto-session").setup({
  auto_session_suppress_dirs = {
    "C:/Users/User/"
  }
})
require("legendary").setup({
  extensions = {
    lazy_nvim = true
  }
})
require("which-key").setup()
require("img-clip").setup({
  default = {
    embed_image_as_base64 = false,
    prompt_for_file_name = false,
    drag_and_drop = {
      insert_mode = true
    },
    use_absolute_path = true
  }
})
require("tokyonight").setup({
  style = "night"
})
require("lualine").setup{
  options = {
    theme = "tokyonight",
    component_separators = { left = "/", right = "" },
    section_separators = { left = "", right = "" }
},
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {require("auto-session.lib").current_session_name},
    lualine_x = {
      'encoding', 'fileformat', 'filetype',
      {
        require('keepcursor').KeepCursorStatus,
        color = { fg = 'Normal' },
        cond = function ()
          if _G.KeepCursorAt ~= nil then
            return true
          end
        end
      }
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}
require("neovim-project").setup({
  projects = {
    "C:/Users/User/Github",
    "C:/Users/User/Project",
  },
  datapath = vim.fn.stdpath("data"),
  last_session_on_startup = true,
  dashboard_mode = false,
  filetype_autocmd_timeout = 200,
  session_manager_opts = {
    autosave_ignore_dirs = {
      vim.fn.expand("~"),
      "/tmp",
    },
    autosave_ignore_filetypes = {
      "ccc-ui",
      "gitcommit",
      "gitrebase",
      "qf",
      "toggleterm"
    }
  }
})
require("neo-tree").setup()
require('goto-preview').setup({
  width = 120,
  height = 15,
  border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"},
  default_mappings = false,
  debug = false,
  opacity = nil,
  resizing_mappings = false,
  post_open_hook = nil,
  post_close_hook = nil,
  references = {
    telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
  },
  focus_on_open = true,
  dismiss_on_move = false,
  force_close = true,
  bufhidden = "wipe",
  stack_floating_preview_windows = true,
  preview_window_title = {
    enable = true,
    position = "left"
  },
  zindex = 1
})
-- require('whitespace-nvim').setup({
--   highlight = 'DiffDelete',
--   ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help', 'dashboard' },
--   ignore_terminal = true,
--   return_cursor = true
-- }) m
-- require("syntax-highlighted-cursor").setup()
require("keepcursor").setup({
  enabled_on_start_v = "none",
  enabled_on_start_h = "none"
})
require("plugin.nvim-treesitter")
require("truncateline").setup({
  enabled_on_start = true,
  truncate_str = "...",
  line_start_length = 8,
  temporary_toggle_dur = 2000,
  hilight_group = "Comment"
})
require("stcursorword").setup({
  max_word_length = 100,
  min_word_length = 2,
  excluded = {
    filetypes = { "TelescopePrompt" },
    buftypes = {},
    patterns = {
      "%.png$",
      "%.jpg$",
      "%.jpeg$",
      "%.pdf$",
      "%.zip$",
      "%.tar$",
      "%.tar%.gz$",
      "%.tar%.xz$",
      "%.tar%.bz2$",
      "%.rar$",
      "%.7z$",
      "%.mp3$",
      "%.mp4$"
    }
  },
  highlight = {
    underline = true,
    fg = nil,
    bg = nil
  }
})
-- require("im-switch").setup{
--   set_default_im_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },
--   save_im_events = { "InsertLeavePre" },
--   set_previous_im_events = { "InsertEnter" },
--   windows = {
--     enabled = true,
--   }
-- }
local lspconfig = require('lspconfig')
require("mason").setup(settings)
require("mason-lspconfig").setup({
  ensure_installed = servers,
  automatic_installation = true,
})
require("lsp.mason")
require("lsp.handlers").setup()
require("lsp.null-ls")
require("plugin.nvim-cmp")
require("rimels").setup({
  keys = { start = ";f", stop = ";;", esc = "jj" },
  cmd = vim.lsp.rpc.connect("127.0.0.1", 9257),
  rime_user_dir = "C:/Users/User/Data/rime-ls",
  shared_data_dir = "C:/Users/User/AppData/Roaming/Rime",
  max_candidates = 9
})
local z_utils = require("telescope._extensions.zoxide.utils")
require("telescope").setup{
  defaults = {
    theme = "ivy",
    layout_config = {
      prompt_position = "bottom"
    },
    border = false
  },
  extensions = {
    lazy = {
      show_icon = true,
      mappings = {
        open_in_browser = "<C-o>",
        open_in_file_browser = "<M-b>",
        open_in_find_files = "<C-f>",
        open_in_live_grep = "<C-g>",
        open_in_terminal = "<C-t>",
        open_plugins_picker = "<C-b>",
        open_lazy_root_find_files = "<C-r>f",
        open_lazy_root_live_grep = "<C-r>g",
        change_cwd_to_plugin = "<C-c>d",
      },
      actions_opts = {
        open_in_browser = {
          auto_close = false,
        },
        change_cwd_to_plugin = {
          auto_close = false,
        },
      },
      terminal_opts = {
        relative = "editor",
        style = "minimal",
        border = "rounded",
        title = "Telescope lazy",
        title_pos = "center",
        width = 0.5,
        height = 0.5,
      },
    },
    cmdline = {
      picker = {
        layout_config = {
          width  = 100,
          height = 25,
        }
      },
      mappings = {
        complete = '<Tab>',
        run_selection = '<C-CR>',
        run_input = '<CR>',
      },
    },
    zoxide = {
      theme = "ivy",
      layout_config = {
        prompt_position = "bottom"
      },
      border = false,
      prompt_title = "[ Walking on the shoulders of TJ ]",
      mappings = {
        default = {
          after_action = function(selection)
            print("Update to (" .. selection.z_score .. ") " .. selection.path)
          end
        },
        ["<C-s>"] = {
          before_action = function(selection) print("before C-s") end,
          action = function(selection)
            vim.cmd.edit(selection.path)
          end
        },
        ["<C-q>"] = { action = z_utils.create_basic_command("split") },
      },
    },
    repo = {
      list = {
        fd_opts = {
          "--no-ignore-vcs",
        },
        search_dirs = {
          "C:/Users/User/Project",
        },
      },
    },
    dir = {
      hidden = true,
      no_ignore = false,
      show_preview = true,
      follow_symlinks = false,
    },
    file_browser = {
      theme = "ivy",
      border = false,
    },
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg", "svg", "gif" },
      find_cmd = "rg"
    },
    everything = {
      es_path = "es",
      case_sensitity = false,
      whole_word = false,
      match_path = false,
      sort = false,
      regex = true,
      offset = 0,
      max_results = 100,
    },
    emoji = {
      action = function(emoji)
        vim.fn.setreg("*", emoji.value)
        print([[Press p or "*p to paste this emoji]] .. emoji.value)
      end,
    },
    import = {
      insert_at_top = true,
      custom_languages = { {
        extensions = { "js", "ts" },
        filetypes = { "vue" },
        insert_at_line = 2,
        regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
        },
      },
    }
  }
}
require("telescope").load_extension("lazy")
require("telescope").load_extension("cmdline")
require("telescope").load_extension("zoxide")
require("telescope").load_extension("frecency")
require("telescope").load_extension("repo")
require("telescope").load_extension("dir")
require("telescope").load_extension("file_browser")
require("telescope").load_extension("media_files")
require("telescope").load_extension("everything")
require("telescope").load_extension("emoji")
require("telescope").load_extension("import")
require("telescope").load_extension("telescope-tabs")
require("telescope").load_extension("gh")
require("telescope-tabs")
-- require("cheatsheet").setup({
--   bundled_cheatsheets = {
--     enabled = { "default", "regex", "netrw", "lua" },
--   },
--   bundled_plugin_cheatsheets = {
--     enabled = { "vim-sandwich", "vim-easy-align", "auto-session", "goto-preview", "telescope.nvim" },
--   },
--   include_only_installed_plugins = true,
--   telescope_mappings = {
--     ['<CR>'] = require('cheatsheet.telescope.actions').select_or_fill_commandline,
--     ['<A-CR>'] = require('cheatsheet.telescope.actions').select_or_execute,
--     ['<C-Y>'] = require('cheatsheet.telescope.actions').copy_cheat_value,
--     ['<C-E>'] = require('cheatsheet.telescope.actions').edit_user_cheatsheet,
--   }
-- })
-- require("nvim-devdocs").setup({
--   dir_path = vim.fn.stdpath("data") .. "/devdocs",
--   telescope = {},
--   filetypes = {
--    scss = "sass",
--    javascript = { "node", "javascript" }
--   },
--   float_win = {
--     relative = "editor",
--     height = 25,
--     width = 100,
--     border = "rounded",
--   },
--   wrap = false,
--   previewer_cmd = nil,
--   cmd_args = {},
--   cmd_ignore = {},
--   picker_cmd = false,
--   picker_cmd_args = {},
--   mappings = {
--     open_in_browser = ""
--   },
--   ensure_installed = {},
--   after_open = function(bufnr)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Esc>', ':close<CR>', {})
--   end
-- })
require("flow").setup{
    output = {
        buffer = true,
        size = 80,
        focused = true,
        modifiable = false,
        -- window_override = {
        --   border = 'double',
        --   title = 'Output',
        --   title_pos = 'center',
        --   style = 'minimal',
        --   ...
        -- }
    },
    filetype_cmd_map = {
        python = "python <<-EOF\n%s\nEOF",
    },
    sql_configs = require('flow.util').read_sql_config('C:/Users/User/Data/neovim/.db_config.json'),
    custom_cmd_dir = "C:/Users/User/Data/neovim/.flow_cmds"
}
require('flow.vars').add_vars({
    str = "test-val-2",
    num = 3,
    bool = true,
    var_with_func = function()
        return "test-val"
    end
})
require("toggleterm").setup({
  size = 6
})
--local dap_install = require("dap-install")
--dap_install.setup({
--  installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
--  verbosely_call_debuggers = true,
--})
require("plugin.nvim-dap")
require("nvim-dap-virtual-text").setup()
require("dap-python").setup(
  "C:/Users/User/.virtualenvs/debugpy/bin/python"
)
-- require("dapui").setup()
require("avante").setup{
  provider = "ollama",
  auto_suggestions_provider = "ollama",
  vendors = {
    -- openai = {
    --   endpoint = "https://api.chatanywhere.tech",
    --   model = "gpt-4o-mini",
    --   timeout = 30000,
    --   temperature = 0,
    --   max_tokens = 4096,
    --   ["local"] = false,
    -- },
    ollama = {
      ["local"] = true,
      endpoint = "127.0.0.1:11434/v1",
      model = "codellama",
      parse_curl_args = function(opts, code_opts)
        return {
          url = opts.endpoint .. "/chat/completions",
          headers = {
            ["Accept"] = "application/json",
            ["Content-Type"] = "application/json",
          },
          body = {
            model = opts.model,
            messages = require("avante.providers").copilot.parse_message(code_opts),
            max_tokens = 2048,
            stream = true,
          },
        }
      end,
      parse_response_data = function(data_stream, event_state, opts)
        require("avante.providers").openai.parse_response(data_stream, event_state, opts)
      end,
    }
  }
}
require("remember")
require("tabout").setup{
  tabkey = '<Tab>',
  backwards_tabkey = '<S-Tab>',
  act_as_tab = true,
  act_as_shift_tab = false,
  default_tab = '<C-t>',
  default_shift_tab = '<C-d>',
  enable_backwards = true,
  completion = true,
  tabouts = {
    {open = "'", close = "'"},
    {open = '"', close = '"'},
    {open = '`', close = '`'},
    {open = '(', close = ')'},
    {open = '[', close = ']'},
    {open = '{', close = '}'}
  },
  ignore_beginning = true,
  exclude = {}
}
require("align").setup{
  update_in_modes = {},
  align = {
    [0] = {
      '\t',
      { '%s[+-]?[%d.,]+', align = 'right' },
    },
    ['*'] = {
      [0] = {
        ' = ',
      },
    },
    csv = {
      [0] = {
        ',',
      },
    },
  },
}
require("grug-far").setup()
require("table-nvim").setup({
  padd_column_separators = true,
  mappings = {
    next = '<TAB>',
    prev = '<S-TAB>',
    insert_row_up = '<A-k>',
    insert_row_down = '<A-j>',
    move_row_up = '<A-S-k>',
    move_row_down = '<A-S-j>',
    insert_column_left = '<A-h>',
    insert_column_right = '<A-l>',
    move_column_left = '<A-S-h>',
    move_column_right = '<A-S-l>',
    insert_table = '<A-t>',
    insert_table_alt = '<A-S-t>',
    delete_column = '<A-d>',
  }
})
require("marknav").setup()
-- require("nvim-rss").setup({
--  feeds_dir = "~/.config/nvim"
-- })
-- require("md-pdf").setup({
--     margins = "1.5cm",
--     highlight = "tango",
--     toc = true,
--     preview_cmd = function() return "firefox" end,
--     ignore_viewer_state = false,
--     fonts = {
--         main_font = nil,
--         sans_font = "LXGW WenKai GB",
--         mono_font = "MonaspiceAr NFP + Sarasa Gothic SC + WFM Sans SC",
--         math_font = nil,
--     },
--     pandoc_user_args = nil,
-- })
-- require("pdf").setup({
--   pdf_path = "~/Obsidian/Vault/Files/",
--   image_path = "~/Obsidian/Vault/Images/",
--   pdftoppm_path = "/usr/bin/pdftoppm",
--   link_pattern = "(.-)%[(.-)%]%((.-)%.pdf#page=(%d+)%)",
--   new_link_format = function(prefix, text, generated_image_file)
--     return prefix .. "[" .. text .. "](" .. generated_image_file .. ")"
--   end,
-- })