local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
-- jj = esc
map('i', 'jj', '<Esc>', {noremap = true})
-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
--map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
--map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
-----------------------------------------------------------
-- Фн. клавиши по F1 .. F12
-----------------------------------------------------------
-- По F1 очищаем последний поиск с подсветкой
map('n', '<F1>', ':nohl<CR>', default_opts)
-- <F5> разные вариации нумераций строк, можно переключаться
map('n', '<F5>', ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)
-- <F6> дерево файлов.
map('n', '<F6>', ':NERDTree<CR>', default_opts)
map('n', '<F7>', ':NERDTreeToggle<CR>', default_opts)
map('n', 'fg',':Telescope live_grep<CR>', default_opts)
map('n', 'ff',':Telescope find_files<CR>', default_opts)
