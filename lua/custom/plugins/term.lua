return {
  vim.keymap.set('n', '<C-`>', function()
    if vim.bo.buftype == 'terminal' then
      vim.cmd.close()
    else
      vim.cmd.split() -- 垂直分割窗口
      vim.cmd.terminal()
    end
  end, { desc = 'Toggle terminal' }),
}
