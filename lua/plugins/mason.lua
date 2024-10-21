return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "emmet-language-server",
      "ltex-ls",
      "prettierd",
      "prettier",
      "shfmt",
      "tailwindcss-language-server",
    })
  end,
}
