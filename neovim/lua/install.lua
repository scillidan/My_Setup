local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  opts = { rocks = { hererocks = true } },
  { "kkharji/sqlite.lua" },
  { "mrjones2014/legendary.nvim", priority = 10000, lazy = false },
  { "folke/which-key.nvim", event = "VeryLazy" },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-web-devicons", opt = true },
  { "nvim-lua/plenary.nvim" },
  { "nvim-lua/popup.nvim" },
  { "MunifTanjim/nui.nvim" },
  { "stevearc/dressing.nvim" },
  { "zbirenbaum/copilot.lua" },
  { "HakonHarnes/img-clip.nvim", event = "VeryLazy" },
  { "MeanderingProgrammer/render-markdown.nvim",
    opts = { file_types = { "markdown", "Avante" } },
    ft = { "markdown", "Avante" }
  },
  { "Shatur/neovim-session-manager" },
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x" },
  { "rmagatti/goto-preview" },
  { "coffebar/neovim-project", lazy = false, priority = 100,
    init = function()
      vim.opt.sessionoptions:append("globals")
    end
  },
  -- { "johnfrankmorgan/whitespace.nvim" },
  { "rlychrisg/truncateline.nvim" },
  { "mawkler/modicator.nvim" },
  { "sontungexpt/stcursorword", event = "VeryLazy", config = true },
  -- { "ukyouz/syntax-highlighted-cursor.nvim" },
  { "rlychrisg/keepcursor.nvim" },
  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "HiPhish/nvim-ts-rainbow2" },
    opts = function(_, opts)
      opts.rainbow = {
        enable = true,
        query = "rainbow-parens",
        strategy = require("ts-rainbow").strategy.global,
      }
    end,
    ensure_installed = { "html", "lua" },
    highlight = {
      enable = true,
    }
  },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "glepnir/lspsaga.nvim" },
  { "jose-elias-alvarez/typescript.nvim" },
  { "onsails/lspkind.nvim" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },
  { "wlh320/rime-ls" },
  { "liubianshi/cmp-lsp-rimels",
    config = function()
      vim.system({'C:/Users/User/Bin/rime_ls/rime_ls.exe', '--listen', '127.0.0.1:9257'})
    end
  },
  -- { "drop-stones/im-switch.nvim", event = "VeryLazy" },
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" },
  { "tsakirist/telescope-lazy.nvim" },
  { "jonarrien/telescope-cmdline.nvim" },
  { "jvgrootveld/telescope-zoxide" },
  { "nvim-telescope/telescope-frecency.nvim" },
  -- { "nvim-telescope/telescope-project.nvim" },
  { "cljoly/telescope-repo.nvim" },
  { "princejoogie/dir-telescope.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "scillidan/telescope-media-files.nvim" },
  { "Verf/telescope-everything.nvim" },
  { "xiyaowong/telescope-emoji.nvim" },
  { "piersolenski/telescope-import.nvim" },
  { "LukasPietzschmann/telescope-tabs" },
  { "nvim-telescope/telescope-github.nvim" },
  -- { "sudormrfbin/cheatsheet.nvim" },
  -- { "warpaint9299/nvim-devdocs" },
  { "arjunmahishi/flow.nvim" },
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  { "ravenxrz/DAPInstall.nvim" },
  { "mfussenegger/nvim-dap" },
  { "mfussenegger/nvim-dap-python" },
  { "theHamsta/nvim-dap-virtual-text" },
	{ "rcarriga/nvim-dap-ui" },
  { "yetone/avante.nvim", event = "VeryLazy", lazy = false, version = false,
    build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
  },
	{ "rmagatti/auto-session" },
  { "vladdoster/remember.nvim" },
  { "Pocco81/auto-save.nvim" },
  { "LunarWatcher/auto-pairs" },
	{ "abecodes/tabout.nvim", after = {"nvim-cmp"} },
  -- { "machakann/vim-sandwich" },
  { "mityu/vim-gyoza" },
  { "jokesper/align.nvim" },
  { "smoka7/multicursors.nvim", event = "VeryLazy",
    dependencies = { "smoka7/hydra.nvim", },
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = { {
      mode = { "v", "n" },
      "<leader>m",
      "<cmd>MCstart<cr>",
      desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
  { "MagicDuck/grug-far.nvim" },
  -- linux?
  { "javiorfo/nvim-hemingway", lazy = true,
    dependencies = { 'javiorfo/nvim-popcorn' },
    cmd = { "HemingwayInfo" },
    keys = {
        { "<leader>co", "<Plug>HemingwayComment" },
        { "<leader>co", "<Plug>HemingwayMultiComment", mode = "v" },
    }
  },
  { "SCJangra/table-nvim", ft = "markdown" },
  { "crusj/bookmarks.nvim", keys = { { "<tab><tab>", mode = { "n" } }, }, branch = "main",
    config = function()
      require("bookmarks").setup()
      require("telescope").load_extension("bookmarks")
    end
  },
  { "daenikon/marknav.nvim", ft = { "markdown", "md" },
    config = function()
      require("marknav").setup()
    end
  },
  { "empat94/nvim-rss", rocks = { "luaexpat" } }
  -- { "arminveres/md-pdf.nvim", branch = "main", lazy = true }
  -- { "paysancorrezien/pdf.nvim" }
})