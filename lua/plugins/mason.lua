-- return {
--   "williamboman/mason.nvim",
--   opts = function(_, opts)
--     vim.list_extend(opts.ensure_installed, {
--     })
--   end,
-- }
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = {
        "cssls",
        "html",
        "jsonls",
        "pyright",
        "tailwindcss",
      },
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "emmet-language-server",
        "ltex-ls",
        "prettierd",
        "prettier",
        "shfmt",
        "tailwindcss-language-server",
        "prettier",
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    })
  end,
}
