return {
  "mrcjkb/rustaceanvim",

  init = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = function() end,
        default_settings = {
          ["rust-analyzer"] = {
            lens = {
              debug = { enable = true },
              enable = true,
              implementations = { enable = true },
              references = {
                adt = { enable = true },
                enumVariant = { enable = true },
                method = { enable = true },
                trait = { enable = true },
              },
              run = { enable = true },
              updateTest = { enable = true },
            },
          },
        },
      },
    }
  end,
}
