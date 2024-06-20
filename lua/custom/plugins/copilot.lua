return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_filetypes = {
      python = true,
      javascript = true,
      c = true, -- 启用 C 语言补全
      cpp = true, -- 启用 C++ 语言补全
      cs = true, -- 启用 C# 语言补全
      -- ... 其他文件类型
    }
    vim.api.nvim_set_keymap('i', '<C-y>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<C-k>', 'copilot#CycleCompletions(1)', { expr = true, silent = true })
    vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#CycleCompletions(-1)', { expr = true, silent = true })
  end,
}
