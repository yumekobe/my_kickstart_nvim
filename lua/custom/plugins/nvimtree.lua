return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- 可选，用于文件图标
  },
  config = function()
    require('nvim-tree').setup { -- 启用插件并使用默认配置

      -- 这里可以添加自定义配置，如：
      view = {
        width = 25, -- 设置文件树宽度
      },
    }
    vim.keymap.set('n', '<C-x>', ':NvimTreeToggle<CR>')
  end,
}
