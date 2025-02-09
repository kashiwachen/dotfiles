local all_mini = {
  -- mini.surround
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "<Leader>sa", -- Add surrounding in Normal and Visual modes
        delete = "<Leader>sd", -- Delete surrounding
        find = "<Leader>sf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines`
      },
    },
  },
  -- mini.files
  {
    "echasnovski/mini.files",
    opts = {
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 30,
      },
    },
  },
}
return all_mini
