local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

require("luasnip").add_snippets("js", {
  s("log", t "console.log()"),
})
