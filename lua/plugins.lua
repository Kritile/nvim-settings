vim.cmd [[packadd packer.nvim]]return require('packer').startup(function()
  -----------------------------------------------------------
    -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
    -----------------------------------------------------------

    -- Цветовая схема
    use 'bluz71/vim-nightfly-guicolors'
    --- Информационная строка внизу
    -- Иконки Для NERD Tree
    use 'ryanoasis/vim-devicons'
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup()
    end, }
    -- Табы вверху
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require("bufferline").setup{}
    end, }

        -----------------------------------------------------------
    -- НАВИГАЦИЯ
    -----------------------------------------------------------
    -- Файловый менеджер
    use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end, }
    -- Навигация внутри файла по классам и функциям
    use 'majutsushi/tagbar'
    -- Замена fzf и ack
    use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require'telescope'.setup {} end, }

     -----------------------------------------------------------
    -- HTML и CSS
    -----------------------------------------------------------
    -- Подсвечивает закрывающий и откры. тэг. Если, где-то что-то не закрыто, то не подсвечивает.
    use 'idanarye/breeze.vim'
    -- Закрывает автоматом html и xml тэги. Пишешь <h1> и он автоматом закроется </h1>
    use 'alvan/vim-closetag'
    -- Подсвечивает #ffffff
    use 'ap/vim-css-color'
    -----------------------------------------------------------
    -- РАЗНОЕ
    -----------------------------------------------------------
    -- Nerd tree
    use 'preservim/nerdtree'
    -- Даже если включена русская раскладка vim команды будут работать
    use 'powerman/vim-plugin-ruscmd'
    -- 'Автоформатирование' кода для всех языков
    use 'Chiel92/vim-autoformat'
    -- ]p - вставить на строку выше, [p - ниже
    use 'tpope/vim-unimpaired'
    --- popup окошки
    use 'nvim-lua/popup.nvim'
     -- Стартовая страница, если просто набрать vim в консоле
     use 'mhinz/vim-startify'
     -- Закрывает автоматом скобки
     use 'cohama/lexima.vim'
     -- Автокомплит 
     use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
     -- Автокомлит зависимость
     use 'nvim-lua/plenary.nvim'
end)
