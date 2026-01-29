return {
  "nvim-tree/nvim-tree.lua",
  opts = function()
    return require "configs.nvimtree"
  end,
  config = function(_, opts)
    -- Clear NvimTree background to match editor
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
    require("nvim-tree").setup(opts)
  end,
}
