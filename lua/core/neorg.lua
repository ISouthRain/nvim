vim.cmd([[
if has('win32') " macunix unix win32
    let neorgHome = "F:\\MyFile\\Neorg"
endif
if has('unix')  " macunix unix win32
    let neorgHome = "~/MyFile/Neorg"
endif
if has('macunix') " macunix unix win32
    let neorgHome = "~/Desktop/MyFile/Neorg"
endif

]])
require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    home = neorgHome,
                }
            }
        }
    }
}