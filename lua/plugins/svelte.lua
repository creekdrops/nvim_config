return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      svelte = {
        cmd = { "svelteserver", "--stdio" },
        filetypes = { "svelte" },
        root_dir = require("lspconfig.util").root_pattern("package.json", ".git"),
        settings = {
          svelte = {
            plugin = {
              html = {
                completions = {
                  enable = true,
                  emmet = true,
                },
              },
              svelte = {
                completions = {
                  enable = true,
                  emmet = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
