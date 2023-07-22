return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "mfussenegger/nvim-dap-python",
        keys = {
          {
            "<leader>de",
            function()
              require("dap-python").test_class()
            end,
            desc = { "Debug Class" },
          },
        },
        "ravenxrz/DAPInstall.nvim",
        config = function()
          local dap_install = require("dap-install")
          dap_install.setup({
            installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
          })
        end,
      },
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "nvim-dap-virtual-text",
      "nvim-telescope/telescope-dap.nvim",
    },
  },
}
