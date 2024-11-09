-- Refer to https://neovim.discourse.group/t/problems-with-treesitter-in-lua-files-and-in-general/4405/4

local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {"lua"},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "python",
    "lua",
    "html",
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "javascript",
    "toml",
    "json",
    "yaml",
    "css",
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  }
}