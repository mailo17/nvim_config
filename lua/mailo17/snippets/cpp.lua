local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- main function
  s("main", {
    t({ "#include <iostream>", "", "int main() {", "\t" }),
    i(1),
    t({ "", "\treturn 0;", "}" }),
  }),

  -- for loop
  s("for", {
    t("for (int "),
    i(1, "i"),
    t(" = 0; "),
    i(2, "i"),
    t(" < "),
    i(3, "n"),
    t("; "),
    i(4, "i"),
    t("++) {"),
    t({ "", "\t" }),
    i(0),
    t({ "", "}" }),
  }),

  -- if statement
  s("if", {
    t("if ("),
    i(1, "condition"),
    t({ ") {", "\t" }),
    i(0),
    t({ "", "}" }),
  }),

  -- while loop
  s("while", {
    t("while ("),
    i(1, "condition"),
    t({ ") {", "\t" }),
    i(0),
    t({ "", "}" }),
  }),

  -- printf
  s("printf", {
    t('printf("'),
    i(1, "format"),
    t('"'),
    t({ ", " }),
    i(2, "variables"),
    t(");"),
  }),
}
