return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = true,
  setup = {
    decorations = {
      statusline = {
        -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
        -- this will show the current version of the flutter app from the pubspec.yaml file
        app_version = true,
        -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
        -- this will show the currently running device if an application was started with a specific
        -- device
        device = true,
        -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
        -- this will show the currently selected project configuration
        project_config = false,
      },
    },
    debugger = { -- integrate with nvim dap + install dart code debugger
      enabled = false,
      -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
      -- see |:help dap.set_exception_breakpoints()| for more info
      exception_breakpoints = {},
      -- Whether to call toString() on objects in debug views like hovers and the
      -- variables list.
      -- Invoking toString() has a performance cost and may introduce side-effects,
      -- although users may expected this functionality. null is treated like false.
      evaluate_to_string_in_debug_views = true,
      -- You can use the `debugger.register_configurations` to register custom runner configuration (for example for different targets or flavor). Plugin automatically registers the default configuration, but you can override it or add new ones.
      -- register_configurations = function(paths)
      --   require("dap").configurations.dart = {
      --     -- your custom configuration
      --   }
      -- end,
    },
  },
  keys = {
    { '<leader>fr', '<cmd>FlutterRun<cr>', desc = '[F]lutter [R]un' },
    { '<leader>fdd', '<cmd>FlutterDevices<cr>', desc = '[F]lutter [D]evices' },
    { '<leader>fdt', '<cmd>FlutterDevTools<cr>', desc = '[F]lutter [D]ev [T]ools' },
    { '<leader>fq', '<cmd>FlutterQuit<cr>', desc = '[F]lutter [Q]uit' },
    { '<leader>fo', '<cmd>FlutterOutline<cr>', desc = '[F]lutter [O]utline' },
  },
}
