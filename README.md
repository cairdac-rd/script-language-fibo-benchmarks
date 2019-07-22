# Script-Language-Fibo-Benchmarks

Benchmarks of several script languages found on github.
Only the execution time of the Recursive Fibonacci function was used in the comparaison.

The matab version of the fib function is :
```
function y = fib(n)
  if (n<2)
     y=n;
  else
     y=fib(n-1)+fib(n-2);

```
fib(36) = 14930352.

### Method
The tests were made on Win10 64 bits Desktop with Intel i7-8700 CPU @ 3.2 GHz and 16 GB of RAM.
Linux ( Ubuntu 18.04.2 LTS, bionic) was installed under Windows from the [MicroSoft Store ](https://www.microsoft.com/en-us/p/ubuntu-1804-lts/9n9tngvndl3q?activetab=pivot:overviewtab) 

The projects were compiled with:
- Linux gcc v7.4 (or clang-3.9 when LLVM was required). Flag -O3 was used in all projects.
- Win: Visual Studio 2019, target x64, optimization Flag /O2

### Results
|  Script Language |  Win64/Linux |  Execution time of Fib(36) in seconds|
| ------------ | ------------ | ------------ |
| [nickel](https://github.com/owst/nickel "nickel ") w LLVM JIT |  Linux |  0.09 |
| [vvn ](https://github.com/MichaelRFairhurst/vaiven "vvn ") w ASMJIT|  Linux | 0.09  |
| [tourmaline](https://github.com/maekawatoshiki/tourmaline/tree/cmake) w LLVM JIT| Linux  | 0.09  |
| [exolang](https://github.com/twixraider81/exolang) w LLVM JIT | Linux  | 0.1 |
| [luajit 2.1.0-beta3](http://luajit.org/) w DYNASM | Linux   | 0.12  |
| [Stackjit](https://github.com/svenslaggare/StackJIT) | Linux  | 0.2  |
| nodejs v8.10.0 (from ubuntu distr)| Linux  | 0.4  |
| [dash](https://github.com/eqrion/dash)  | Win  | 0.7 |
| my register based VM:(to be published)  | Win  | 0.7 |
| Matlab2018b (2nd run)  | Win  | 0.85 |
| [berry](https://github.com/Skiars/berry)  | Linux  | 0.9  |
| [berry](https://github.com/Skiars/berry)  | Win |  1 |
| [fin](https://github.com/naleksiev/fin)  | Linux  | 1 |
| [Tagha](https://github.com/assyrianic/Tagha)  | Linux  | 1.1 |
| [fin](https://github.com/naleksiev/fin) | Win | 1.2 |
| [rubi](https://github.com/embedded2015/rubi) w JIT| Win32 | 1.3 |
| [badgerscript](https://github.com/moefh/badgerscript) | Linux | 1.4  |
| [Killa](https://github.com/ex/Killa) | Linux | 1.4 |
| [clox](https://github.com/munificent/craftinginterpreters)  | Linux  | 1.4 |
| [badgerscript](https://github.com/moefh/badgerscript)  | Win   | 1.6  |
| [PL0-Compiler](https://github.com/Justme0/pl0-compiler)  | Linux  | 1.6  |
| [c4](https://github.com/rswier/c4)  | Linux | 1.7  |
| [fake](https://github.com/esrrhs/fake) w -jit  | Win  | 1.7 |
| [golem](https://github.com/alexander-koch/golem)  | Linux | 1.7 |
| Lua 5.2.4 (from ubuntu distr)  | Linux  | 1.7 |
| [PL0-Compiler](https://github.com/Justme0/pl0-compiler)  | Win  | 1.8  |
| [loxx](https://github.com/mspraggs/loxx)  | Linux | 1.9  |
| [janet](https://github.com/jfcap/janet)  | Linux  | 2  |
| [gmscript](https://github.com/publicrepo/gmscript)  | Win  | 2.3 |
| [p++](https://github.com/tumtumtum/pplusplus)  | Win  | 2.4 |
| [loxx](https://github.com/mspraggs/loxx)  | Win  | 2.6  |
| [llamavm](https://github.com/throne-developer/llamavm)  | Linux | 2.7   |
| [mruby](https://github.com/mruby/mruby)  | Linux  | 2.7  |
| [lunatic](https://github.com/shiinamiyuki/lunatic)  | Linux  | 2.8  |
| [fake](https://github.com/esrrhs/fake) no jit  | Win  |  2.9 |
| [janet](https://github.com/jfcap/janet)  | Win  |  2.9 |
| [JetScript](https://github.com/matt-attack/JetScript)  |  Win | 3  |
| [llamavm](https://github.com/throne-developer/llamavm)   | Win  | 3  |
| Matlab2018b (1st run)  |  Win | 3.1  |
| [ink-ivm](https://github.com/rod-lin/ivm)  | Linux  | 3.2  |
| [p++](https://github.com/tumtumtum/pplusplus)   | Linux  | 3.2 |
| [poca](https://github.com/BeRo1985/poca )   | Win32-Delphi | 3.8 |
| [KernScript](https://github.com/redagito/KernScript )   | Linux | 3.9 |
| [nickel](https://github.com/owst/nickel) no jit  | Linux  | 4.3  |
| [moon_lang](https://github.com/glampert/moon-lang)  | Linux   | 4.8  |
| [JetScript](https://github.com/matt-attack/JetScript)   | Linux  | 5.2 |
| [luna](https://github.com/airtrack/luna)  | Linux   | 5.7  |
| [luna](https://github.com/airtrack/luna)   | Win  | 6.6  |
| [yasl](https://github.com/yasl-lang/yasl)  | Linux  | 7.3  |
| [rho](https://github.com/arshajii/rho)  | Linux  | 8.5 |
| [aria](https://github.com/rxi/aria)  | Linux  | 9  |


### Comments
- JIT boosts performances w.r.t register or stack based Virtual Machine.
- gcc -O3 produce often executable which is faster than that produced by VS2019.
