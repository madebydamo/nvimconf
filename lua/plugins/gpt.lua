return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      edit_with_instructions = {
        keymaps = {
          accept = "<C-y>",
          toggle_diff = "<C-d>",
          toggle_settings = "<C-o>",
          cycle_windows = "<Tab>",
          use_output_as_input = "<C-i>",
          close = { "<C-c>", "q" },
        },
      },
      chat = {
        keymaps = {
          close = { "<C-c>", "q" },
          yank_last = "<C-y>",
          yank_last_code = "<C-k>",
          scroll_up = "<C-u>",
          scroll_down = "<C-d>",
          toggle_settings = "<C-o>",
          new_session = "<C-n>",
          cycle_windows = "<Tab>",
          select_session = "<Space>",
          rename_session = "r",
          delete_session = "d",
        },
      },
      openai_params = {
        model = "gpt-3.5-turbo",
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 1000,
        temperature = 0.1,
        top_p = 1,
        n = 1,
      },
    })
  end,
  dependencies = {
    { "MunifTanjim/nui.nvim" },
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
    {
      "folke/which-key.nvim",
      opts = function(_, _)
        local wk = require("which-key")
        wk.register({
          mode = { "n", "v" },
          ["<leader>a"] = { name = "+ChatGPT" },
        })
      end,
    },
  },
}
