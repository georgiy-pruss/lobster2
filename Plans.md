## Fixes

* Don't print all 100+ digits of numbers like 100.0e100
* Make 100e100 parsable
* print"ok" -- make it compiled

## Syntax

* 123_456_789
* 2#BBBB_BBBB // bin
  36#xyz // up to base 36

### Done

* #Bad_Face -- hex starts #
* 0x1234_5678 -- both old and new style hex numbers allow underscores
* int numbers can be from -2**63 up to 2**64-1; for range 2**63..2**64-1 they can be treated as unsigned int, while as int they are negative

### Deprecate

* .123, 123. -- floats with leading or trailing
* 0xFFFF -- hex with leading 0x

## Extension

* continue
* tuple?
* until expr: stmts
* print x,y,z
