require("telescope").load_extension("emoji")
require("telescope-emoji").setup({
  action = function(emoji)
    -- argument emoji is a table.
    -- {name="", value="", cagegory="", description=""}
    vim.fn.setreg("*", emoji.value)
    print([[Press p or "*p to paste this emoji]] .. emoji.value)
  end,
})