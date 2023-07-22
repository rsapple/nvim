return {
  {
    "rcarriga/nvim-notify",
    config = function()
      local notify = require("notify")
      vim.notify = notify
      notify.setup({
        fps = 60,
        level = 2,
        render = "compact",
        stage = "fade",
        top_down = true,
      })
    end,
  },
}
