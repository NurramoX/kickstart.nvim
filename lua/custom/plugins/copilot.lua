return {
  "zbirenbaum/copilot.lua",
  event = { "BufRead", "BufNewFile" },
  opts = {
    filetypes = { julia = false, ["dap-repl"] = false },
    panel = { enabled = true },
    suggestion = {
      enabled = true,
      auto_trigger = false,
      keymap = {
        accept = "<M-CR>",
        next = "<M-n>",
        prev = "<M-p>",
        dismiss = "<C-]>",
      },
    },
  },
}
