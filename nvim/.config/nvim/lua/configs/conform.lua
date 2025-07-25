local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang-format" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  formatters = {
    -- -- C & C++
    ["clang-format"] = {
      prepend_args = {
        "-style={ \
                        IndentWidth: 4, \
                        TabWidth: 4, \
                        AccessModifierOffset: 0, \
                        IndentAccessModifiers: true, \
                        PackConstructorInitializers: Never}",
      },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
