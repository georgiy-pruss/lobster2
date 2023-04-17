## Fixes

* Don't print all 100+ digits of numbers like `100.0e100`
* Make `100e100` parsable
* `print"ok"` -- make it compiled (I know that the blanks after function names made for purpose. It doesn't work that way. Maybe it'll go to Extension. At least `if"a">"0":print("G")else:print("L")` works)

## Syntax

* `123_456_789`
* `2#0011_1010`, `36#xyz` // bin, oct, any base 2 to 36
* `"string with #n #r #t #xx ## #(expr) etc"` #b? #uuuuuu
* `#"xx xxxx xx xx"` // hex string
* `import m1,m2,m3`
* `enum Color: RED, BLUE, WHITE`
* `var i,j,k:int, a,b,c:float`
* `let P=1,Q=2`? workaround `let P,Q=1,2` even for different types
* `aaaa: bbb; ccc; ddd` // statemnts, maybe { bbb; ccc; ddd }
* `x?y!z` `x&&y` `x||y` `!x`
* `var v = e` --> `v := e` or for let?
* maybe `let v = e` --> `v := e` and `var v = e` --> `mut v := e`?

### Done

* `#Bad_Face` -- hex starts #
* `0x1234_5678` -- both old and new style hex numbers allow underscores
* int numbers can be from -2^63 up to 2^64-1; for range 2^63..2^64-1 they can be treated as unsigned int, while as int they are negative

### Deprecate

* `.123`, `123.` -- floats with leading or trailing
* `0xFFFF` -- hex with leading 0x
* backslash as escape char in str
* `enum_flags` -- seriously?

## Extension

* `string` --> `str`, `import` --> `use`, `def` --> `fn`
* `continue`
* tuple?
* `until` expr: stmts
* `print` x,y,z
* str for bytes and ustr for unicode?
* float32, int8..int128? uint?
* B I I1 I2 I4 I8 I16 U U1... F F4 F8?
* unsigned ops for ints: `+` `-` `&` `|` `~` (xor) `~` (not) stay, `*<<` `*>>` (rol, ror), `#<` `#>` `#<=` `#>=` `#*` `#/` `#%` `#>>`
* `@` `$` `^`(power) ` unused
* tuple?
* `x??y` // y if x fails. or something like try(expr,exc_body):  x = try(y/z): 0.0 or print"Zerodiv!"
* x `in` xs, ch `in` str, x `in` a..b; `not in`
* ranges? `for(a..b) ...` `x[a..b]`
* indexing v/s `[n]` `[n:m]` `[n:]` `[:m]`; negative index
* long (extended, mp); mpf. try at least port mp/mpf as modules
* rationals? complex?
* *dict* [k:v,...]
* *string* fns and ops
* *date/time* fns
* short str (<7 or 6 chars) as values instead of pointer
* vararg fns?
* passing fns as args?
