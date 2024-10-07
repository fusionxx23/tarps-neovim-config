return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = function()
    local opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettierd" },
        typescript = { "prettier" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettierd" },
        astro = { "prettier" },
        html = { "prettier" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
        graphql = { "prettierd" },
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
