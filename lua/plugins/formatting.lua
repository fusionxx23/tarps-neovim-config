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
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettierd" },
        yaml = { "prettier" },
        astro = { "prettier" },
        svelte = { "prettier" },
        markdown = { "prettierd" },
        graphql = { "prettierd" },
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
