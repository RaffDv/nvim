return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {}, -- Deixe as opções padrão se houver
  config = function(_, opts)
    require("nvim-autopairs").setup(opts)

    -- Importante: Adicione esta parte para a funcionalidade do Enter
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    npairs.add_rules({
      Rule(">", "<", "html"):with_pair(function(opts)
        if opts.line:sub(opts.col - 1, opts.col - 1) == ">" then
          return true
        end
      end):with_cr(function(opts)
        -- A lógica principal está aqui
        if opts.line:sub(opts.col - 1, opts.col - 1) == ">" then
          return true
        end
      end),
    })
  end,
}
