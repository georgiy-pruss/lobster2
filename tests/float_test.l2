assert 0.0 == float(0)

assert 1.0 == float(1)
assert 2.0 == float(2)
assert 12345_67890_12345.0 == float(12345_67890_12345)
assert 123.0 == 1.23e002
assert 10000.0 == 1.0e4
assert 10000.0 == 1e0004
assert 1e10 == 1.00000e10
assert 1_234_567.0 == 1234567.0
assert 1.234_567_890 == 1.234567890
assert 9__99__99__99e99 == 9999999e99
assert 1234.567e11 == 1234567e8
assert 0.000006 == 6e-6
assert 0.000_006 == 6e-6

assert -1.0 == -float(1)
assert -2.0 == -float(2)
assert -12345_67890_12345.0 == -float(12345_67890_12345)
assert -123.0 == -1.23e002
assert -10000.0 == -1.0e4
assert -10000.0 == -1e0004
assert -1e10 == -1.00000e10
assert -1_234_567.0 == -1234567.0
assert -1.234_567_890 == -1.234567890
assert -9__99__99__99e99 == -9999999e99
assert -1234.567e11 == -1234567e8
assert -0.000006 == -6e-6
assert -0.000_006 == -6e-6

assert 1e308 == 1e308
assert 1e309 == 1e999   // inf
assert -1e309 == -1e999 // -inf
let nan = 0.0/0.0
assert 0.0/0.0 != nan // nan != nan

// need something like 1.inf 1.nan

