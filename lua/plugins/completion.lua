return {
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = { "InsertEnter" },
    dependencies = {
      "nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    opts = {},
    config = function(_, _)
      local cmp = require("cmp")
      cmp.setup({
        mapping = {
          ["<M-p>"] = cmp.mapping.select_prev_item(),
          ["<M-n>"] = cmp.mapping.select_next_item(),
          ["<S-n>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Insert,
          }),
        },
        sources = {
          { name = "nvim_lsp" },
        },
      })
    end,
  },
}
