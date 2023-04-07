return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-Space>"] = { "<esc>", type = "command" }, -- change to normal mode
            ["<ESC>"] = "close",
          },
          n = {
            ["<C-Space>"] = { "i", type = "command" }, -- change to insert mode
          },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependecies = {
      "rcarriga/nvim-notify",
      build = "make",
      config = function()
        require("telescope").load_extension("notify")
      end,
    },
    -- init = function()
    --   require("telescope").load_extension("notify")
    -- end,
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
