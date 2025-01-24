return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = function()
    local opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        astro = { "prettier" },
        graphql = { "prettier" },
        blade = { "blade-formatter" },
        php = { "phpcbf" },
      },
      formatters = {
        prettierd = {
          single_quote = true,
          jsx_single_quote = true,
        },
      },
    }
    return opts
  end,
}
