return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim",
    },
    config = function()
      local dap = require "dap"
      local ui = require "dapui"

      require("dapui").setup()
      require("dap-go").setup()

      require("nvim-dap-virtual-text").setup {
        -- This just tries to mitigate the chance that I leak tokens here. Probably won't stop it from happening...
        display_callback = function(variable)
          local name = string.lower(variable.name)
          local value = string.lower(variable.value)
          if name:match "secret" or name:match "api" or value:match "secret" or value:match "api" then
            return "*****"
          end

          if #variable.value > 15 then
            return " " .. string.sub(variable.value, 1, 15) .. "... "
          end

          return " " .. variable.value
        end,
      }

      -- Handled by nvim-dap-go
      -- dap.adapters.go = {
      --   type = "server",
      --   port = "${port}",
      --   executable = {
      --     command = "dlv",
      --     args = { "dap", "-l", "127.0.0.1:${port}" },
      --   },
      -- }


      vim.keymap.set("n", "<leader>k", dap.toggle_breakpoint)
      vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

      -- Eval var under cursor
      vim.keymap.set("n", "<leader>h", function()
        require("dapui").eval(nil, {enter = true })
      end)

      vim.keymap.set("n", "<leader>c", dap.continue)
      vim.keymap.set("n", "<leader>si", dap.step_into)
      vim.keymap.set("n", "<leader>n", dap.step_over)
      vim.keymap.set("n", "<leader>so", dap.step_out)
      vim.keymap.set("n", "<F5>", dap.step_back)
      vim.keymap.set("n", "<leader>r", dap.restart)
      vim.keymap.set('n', '<leader>t', ':DapTerminate<CR>')

      dap.listeners.before.attach.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
        vim.fn.sign_define('DapBreakpoint', {
          text = '🔴',  -- or use '🔴 🛑', '*', '⛔', etc.
          texthl = 'DiagnosticError',
          linehl = '',
          numhl = ''
        })
        vim.api.nvim_set_hl(0, 'DapStoppedLineHL', {
          bg = '#fffacd',  -- light yellow (LemonChiffon)
          fg = '#000000',  -- black text (optional)
          bold = true
        })
        vim.fn.sign_define('DapStopped', {
          text = '👉',               -- symbol in sign column
          texthl = '',               -- no text highlight
          linehl = 'DapStoppedLineHL',  -- <--- highlights the full line
          numhl = ''                 -- optional: you could also set numhl
        })
        -- vim.api.nvim_set_hl(0, 'DapStoppedLineHL', { bg = '#3c3836' })  -- or any color you like


    end,
  },
}
