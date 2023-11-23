local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

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
  }),
  s("tst", {
    t 'test("',
    i(1),
    t '", () => {',
    t { "", "  " },
    i(0),
    t { "", "});" },
  }),
  s("atst", {
    t 'test("',
    i(1),
    t '", async () => {',
    t { "", "  " },
    i(0),
    t { "", "});" },
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
ls.filetype_extend("typescriptreact", { "typescript", "javascriptreact" })
