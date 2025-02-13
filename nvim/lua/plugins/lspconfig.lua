return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.inlay_hints.enabled = false
    opts.servers = opts.servers or {}
    opts.servers.clangd = {
      capabilities = {
        offsetEncoding = { "utf-16" },
      },
      cmd = {
        "clangd",
        "--header-insertion=never",
      },
      init_options = {
        usePlaceholders = false,
        completeUnimported = true,
        clangdFileStatus = true,
      },
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      root_dir = function(fname)
        return require("lspconfig.util").root_pattern(
          "compile_commands.json",
          "compile_flags.txt",
          "configure.ac",
          ".git"
        )(fname)
      end,
      single_file_support = true,
    }
  end,
}
