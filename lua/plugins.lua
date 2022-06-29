-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {"akinsho/org-bullets.nvim", config = function()
  require("org-bullets").setup {
    symbols = { "◉", "○", "✸", "✿" }
    -- or a function that receives the defaults and returns a list
    -- symbols = function(default_list)
      -- table.insert(default_list, "♥")
	  -- return default_list
	-- end
  }
end}




end)

