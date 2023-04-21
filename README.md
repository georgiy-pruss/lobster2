Welcome to the Lobster programming language!
============================================


Lobster is a statically typed programming language with a Python-esque
syntax that combines the advantages of an expressive type system and
compile-time memory management with a very lightweight, friendly and
terse syntax, by doing most of the heavy lifting for you.

The homepage has more on [the "why" of Lobster](http://strlen.com/lobster/).

Read the full
[documentation](http://aardappel.github.io/lobster/README_FIRST.html)
on how to use it, or skip straight to the
[getting started](http://aardappel.github.io/lobster/getting_started.html) guide.


Lobster is licensed under the Apache v2 license.

Wouter van Oortmerssen

[:lobster:](https://github.com/aardappel/lobster/)

---

## Lobster2

I'll try to "improve" Lobster in three ways:

* Fix some errors/issues (e.g. 100e100 is not recognized as float);
* Add syntax changes, saving compatibility with the original (e.g. #ff as hex);
* Extend/shrink the language, breaking the compatibility... we'll see.

More info: [Plans.md](Plans.md).

### Done

* `#ABBA` -- hex literals can start with `#`
* `#ffff_0000` `0x1234_5678_9ABC` -- both old- and new-style hex numbers can have underscores
* `123_456_789` and `123_456.789_101e123` -- underscores in decimal ints and [floats](tests/float_test.l2) (not in exponent)
* Fixed: `100e100` is now successfully parsed as float
* `int` numbers can be from -2^63 up to 2^64-1; in range 2^63..2^64-1 they can be treated as unsigned ints: while as `int`s they are negative, they allow bit-wise ops like `uint`s; [hexint\_test.l2](tests/hexint_test.l2) and [int\_test.l2](tests/int_test.l2)
* Too big integers produce error
* Lobster-2 files have extension `.l2`

G.P.

<!--
https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax

in C:\Dev\mine\lobster2:
main sln: dev\lobster\lobster.sln
compiled sln: dev\compiled_lobster\compiled_lobster\compiled_lobster.sln
compiled src: dev\compiled_lobster\src\compiled_lobster.cpp
compiled to: dev\compiled_lobster\compiled_lobster\x64\Release\compiled_lobster.exe
-->

