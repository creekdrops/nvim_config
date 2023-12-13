return {
  "telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",
        "dist",
        "build",
        "target",
        "vendor",
        "yarn.lock",
        "package-lock.json",
        ".next",
        ".git",
        ".cache",
        ".DS_Store",
        ".gitignore",
        ".gitmodules",
        ".gitkeep",
        ".gitattributes",
        ".prettierignore",
        ".eslintignore",
        ".svelte-kit",
      },
    },
  },
  dependencies = {
    -- project management
    {
      "ahmedkhalf/project.nvim",
      opts = {
        manual_mode = true,
      },
      event = "VeryLazy",
      config = function(_, opts)
        require("project_nvim").setup(opts)
        require("lazyvim.util").on_load("telescope.nvim", function()
          require("telescope").load_extension("projects")
        end)
      end,
      keys = {
        { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
      },
    },
  },
}
