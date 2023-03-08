local null_ls = require("null-ls")

null_ls.setup({
  debug = true,
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.clang_format,
    },
})
