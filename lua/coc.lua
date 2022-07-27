local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
map('v', 'f','<Plug>(coc-format-selected)',default_opts)
map('i', '<S-TAB>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<Left>"', { expr = true, silent = true, nowait = true })
map('i', '<TAB>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<Right>"', { expr = true, silent = true, nowait = true })
map('n','<C-D>',':CocDiagnostics<CR>',default_opts)
