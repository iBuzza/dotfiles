return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    handlers = {
      ["textDocument/hover"] = function(_, result, ctx, config)
        if not (result and result.contents) then
          return
        end

        -- Use noice.nvim to display hover
        require("noice.lsp").hover()
      end,
    },
  },
}
