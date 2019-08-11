# Notes

Tuplex loads several library files at startup. The "print" function is part of these library functions.

In order to start tuplex without loading the whole library files we use teh -notx switch :
```
time ./bin/txc -jit -nobc -vquiet -notx fib.tx
```
The execution time is 0.12s.

When loading the standard libary functions the execution time is 0.4s.
