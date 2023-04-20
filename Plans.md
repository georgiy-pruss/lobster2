## Fixes

* Don't print all 100+ digits of numbers like `100.0e100`
* `print"ok"` -- make it compileable (I know that the blanks after function names made for purpose. It doesn't work that way. Maybe it'll go to Extension. At least `if"a">"0":print("G")else:print("L")` works)

## Syntax

* `2#0011_1010`, `36#xyz` // bin, oct, any base 2 to 36, but not urgent
* `"string with #n #r #t #xx ## #(expr) etc"` #b? #uuuuuu
* `#"xx xxxx xx xx"` // hex string; also multi-line strings
* `import m1,m2,m3`
* `enum Color: RED, BLUE, WHITE`
* `var i,j,k:int, a,b,c:float`
* note, in args it's ok, so semantics must be the same i.e. i,j,a,b - auto; (a,b,c):int?
* `let P=1,Q=2`? workaround `let P,Q=1,2` even for different types
* `aaaa: bbb; ccc; ddd` // statements, maybe { bbb; ccc; ddd }
* `x?y!z` `x&&y` `x||y` `!x`
* `var v = e` --> `v := e` or for let?
* maybe `let v = e` --> `v := e` and `var v = e` --> `mut v := e`?

### Done

* `#ABBA_ACDC` -- hex literals start with `#`
* `0x1234_5678` -- both old- and new-style hex numbers allow underscores
* `123_456_789` and `123_456.789_101e123` -- underscores in decimal ints and [floats](tests/float_test.lobster) (not exponent)
* Fixed: `100e100` is now parsed as float
* `int` numbers can be from -2^63 up to 2^64-1; in range 2^63..2^64-1 they can be treated as unsigned int, while as `int`s they are negative, see [hexint\_test.lobster](tests/hexint_test.lobster) and [int\_test.lobster](tests/int_test.lobster)
* Too big integers produce error

### Deprecate

* `.123`, `123.` -- floats with leading or trailing dots
* `0xFFFF` -- hex with leading 0x
* backslash as escape char in str
* `enum_flags` -- seriously?

## Extension

* `string` --> `str`, `import` --> `use`, `def` --> `fn`
* `continue`
* tuple?
* `until` expr: stmts
* `print` x,y,z; `print` without newline
* str for bytes and ustr for unicode?
* maybe 'bytes' vs "unicode"; maybe also ``` `c` ``` for chars
* float32, int8..int128? uint?
* B I I1 I2 I4 I8 I16 U U1... F F4 F8?
* unsigned ops for ints: `+` `-` `&` `|` `~` (xor) `~` (not) stay, `*<<` `*>>` (new rol, ror), `#<` `#>` `#<=` `#>=` `#*` `#/` `#%` `#>>` (new uint ops)
* `^`(power) `@` `$` ``` ` ``` unused; btw dots are good too: `.=` (let?), `.+`, `.<<` etc
* maybe `# ` (hash+space) as comment start; `#!` as shebang
* tuple?
* `x??y` // y if x fails. or something like try(expr,exc_body): x = try(y/z): 0.0 or print"Zerodiv!"
* x `in` xs, ch `in` str, x `in` a..b; `not in`?
* ranges? `for(a..b)` `x[a..b]` `v=2*a..b`
* indexing vectors/strings `[n]` `[n:m]` `[n:]` `[:m]`; negative index -- from end
* long (extended, mp); mpf (see [mpmath](https://github.com/mpmath/mpmath)). try at least port mp/mpf as modules; literals `NNNx`
* rationals? complex? no big need at all
* **dict** [k:v,...] // a must! maybe also sets
* **string** fns and ops
* **date/time** fns
* short str (<7 or 6 chars) as values instead of pointer
* vararg fns? dunno. workaround: lists, i.e. vectors. btw max number of args is 7?
* passing fns as args? Just don't know. workaround: fn(x): f(x)
