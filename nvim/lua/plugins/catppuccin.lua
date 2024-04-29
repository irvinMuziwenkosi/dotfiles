return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    end,
  },
}

