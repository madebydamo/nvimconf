return {
  "hrsh7th/nvim-cmp",
  dependencies = { "stevearc/conform.nvim" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
      formatters_by_ft = {
        hbs = { "prettier" },
      },
    }))
  end,
}
