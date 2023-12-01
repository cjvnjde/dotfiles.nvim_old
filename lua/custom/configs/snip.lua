local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function contains_patterns(str, patterns)
  for _, pattern in ipairs(patterns) do
    if string.find(str, pattern) then
      return true
    end
  end

  return false
end

local function is_test_file()
  local filename = vim.api.nvim_buf_get_name(0)

  return contains_patterns(filename, { "%.spec%.", "%.test%." })
end

ls.add_snippets("javascript", {
  s("log", {
    t "console.log(",
    i(1),
    t ")",
  }),
  s("af", {
    t "() => ",
    i(0),
  }),
  -- JEST context
  s("dsb", {
    t 'describe("',
    i(1),
    t '", () => {',
    t { "", "  " },
    i(0),
    t { "", "});" },
  }, {
    condition = is_test_file,
    show_condition = is_test_file,
  }),
  s("tst", {
    t 'test("',
    i(1),
    t '", () => {',
    t { "", "  " },
    i(0),
    t { "", "});" },
  }, {
    condition = is_test_file,
    show_condition = is_test_file,
  }),
  s("atst", {
    t 'test("',
    i(1),
    t '", async () => {',
    t { "", "  " },
    i(0),
    t { "", "});" },
  }, {
    condition = is_test_file,
    show_condition = is_test_file,
  }),
})

ls.filetype_extend("javascriptreact", { "javascript" })

ls.add_snippets("javascriptreact", {
  s("rsc", {
    t { "import React from 'react';", "", "" },
    t "const ",
    i(1),
    t { " = () => {", "  return (", "    " },
    i(0),
    t { "", "  );", "};", "", "" },
    f(function(args)
      return "export default " .. args[1][1]
    end, { 1 }),
  }),
})

ls.filetype_extend("typescript", { "javascript" })
ls.filetype_extend("typescriptreact", { "javascript", "typescript", "javascriptreact" })

ls.setup {
  update_events = { "TextChanged", "TextChangedI" },
}
