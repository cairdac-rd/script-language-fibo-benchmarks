
def fib(n int) int
  if n < 2
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

puts("fib({}) = {}", 36, fib(36))
