-- ██╗███╗   ██╗██████╗ ███████╗███╗   ██╗████████╗   ██████╗ ██╗      █████╗ ███╗   ██╗██╗  ██╗██╗     ██╗███╗   ██╗███████╗
-- ██║████╗  ██║██╔══██╗██╔════╝████╗  ██║╚══██╔══╝   ██╔══██╗██║     ██╔══██╗████╗  ██║██║ ██╔╝██║     ██║████╗  ██║██╔════╝
-- ██║██╔██╗ ██║██║  ██║█████╗  ██╔██╗ ██║   ██║█████╗██████╔╝██║     ███████║██╔██╗ ██║█████╔╝ ██║     ██║██╔██╗ ██║█████╗
-- ██║██║╚██╗██║██║  ██║██╔══╝  ██║╚██╗██║   ██║╚════╝██╔══██╗██║     ██╔══██║██║╚██╗██║██╔═██╗ ██║     ██║██║╚██╗██║██╔══╝
-- ██║██║ ╚████║██████╔╝███████╗██║ ╚████║   ██║      ██████╔╝███████╗██║  ██║██║ ╚████║██║  ██╗███████╗██║██║ ╚████║███████╗
-- ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝      ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝
--
--
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    indent = {
      -- char = "▏",
      char = "┊",
      -- char = "║",
      -- char = "│",
    },
    whitespace = {},
    scope = { enabled = false },
    exclude = { filetypes = { "help", "alpha", "dashboard", "NvimTree", "Trouble", "lazy" } },
  },
  config = function(_, opts)
    require("ibl").setup(opts)
    vim.cmd("IBLDisable")
  end,
}