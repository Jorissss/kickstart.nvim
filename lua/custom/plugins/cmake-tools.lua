return {
  'Jorissss/cmake-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('cmake-tools').setup {
      cmake_generate_options = {
        '-G',
        'Visual Studio 17 2022', -- Replace with your version of Visual Studio
        '-A',
        'x64', -- Specify the architecture if needed
        '-D',
        'CMAKE_EXPORT_COMPILE_COMMANDS=1',
      },
      cmake_cleanup_command = 'cmd /C del',
    }
  end,
}
