
(bool) @boolean

(integer) @number
(float) @number

(lit_string) @string

(identifier) @variable

(fn_call
  fn_name: (identifier) @function)

(kwarg
  key: (identifier) @property)

(pair
  key: (lit_string) @property)

(jinja_statement_open) @punctuation.special
(jinja_statement_close) @punctuation.special
(jinja_value_open) @punctuation.special
(jinja_value_close) @punctuation.special
(jinja_comment_open) @comment
(jinja_comment_close) @comment
(jinja_comment_content) @comment

(html_content) @text.literal
(html_tag_name) @text.literal

["(" ")" "[" "]" "{" "}"] @punctuation.bracket
["," ":" "="] @punctuation.delimiter

(comparison
  operator: _ @operator)

["if" "elif" (jinja_else) "for" "in" "block" "endblock" "extends" "include" "import" "from" "as" "set" "macro" "endmacro" "call" "endcall" "filter" (jinja_raw) "endraw"] @keyword

(jinja_block
  block_name: (identifier) @function)

(jinja_macro
  macro_name: (identifier) @function)

(jinja_filter
  filter_name: (identifier) @function)

(jinja_extends
  parent_template: (lit_string) @string.special)

(jinja_include
  template: (lit_string) @string.special)

(jinja_import
  module: (lit_string) @string.special)

(jinja_from
  module: (lit_string) @string.special)
