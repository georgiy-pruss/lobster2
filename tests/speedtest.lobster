import testing

// This is a speed test to help optimize the implementation.

// Define a custom testrunner:
// Just collect all tests so we can run them interleaved.
class test:
    name:string
    t:testf
    runs:int
    min:float
let tests = []
var number_of_runs = 1
current_test_runner = fn(name:string, t:testf):
    tests.push(test { name, t, number_of_runs, 999999.9 })

print "VM MODE: " + (if vm_compiled_mode(): "C++-compiled" else: "JIT")

// Balance these numbers to get a good blend of what kind of code we're optimizing for.

number_of_runs = 8000
import structtest

number_of_runs = 2300
import misctest

number_of_runs = 5000
import typetest

number_of_runs = 150
import astartest

number_of_runs = 350
import goaptest

number_of_runs = 200
import knightstest

number_of_runs = 6000
import parsertest

number_of_runs = 100
import floodtest

number_of_runs = 10
import watertest

number_of_runs = 6
import gradienttest

number_of_runs = 5
import springstest

number_of_runs = 3
import smallpttest


// We interleave all tests, and take the min of all meta runs, to eliminate variance as best as
// possible.
let meta_runs = 19
var total_time_taken = 0.0
for meta_runs:
    for(tests) t:
        let starttime = seconds_elapsed()
        for t.runs:
            let f = t.t
            f()
        let time_taken = seconds_elapsed() - starttime
        t.min = min(t.min, time_taken)
for(tests) t:
    total_time_taken += meta_runs * t.min
    print "{t.name} time taken for {meta_runs * t.runs} runs: {meta_runs * t.min}"

print "TOTAL time taken: {total_time_taken}"
