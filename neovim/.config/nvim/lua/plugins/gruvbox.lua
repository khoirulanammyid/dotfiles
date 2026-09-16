return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, 
  config = function()
    require("gruvbox").setup({
      contrast = "medium", 
      italic = {
        strings = true,
        comments = true,
      },
    })
    
    vim.cmd("colorscheme gruvbox")
  end,
}

