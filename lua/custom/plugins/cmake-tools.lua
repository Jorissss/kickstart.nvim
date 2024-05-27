return {
  'Jorissss/cmake-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('cmake-tools').setup {}
    vim.api.nvim_create_user_command('Cms', 'CMakeSettings', {})
    vim.api.nvim_create_user_command('Cmg', 'CMakeGenerate', {})
    vim.api.nvim_create_user_command('Cmr', 'CMakeRun', {})
  end,
}
