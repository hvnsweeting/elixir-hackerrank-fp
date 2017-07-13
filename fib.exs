# https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---fibonacci-numbers
#
#
defmodule Solution do
  def fib(n) when n <= 2 do
    case n do
      1 -> 0
      2 -> 1
      0 -> 0
    end
  end
  def fib(n) do
    fib(n-1) + fib(n-2)
  end

  # Tail recursive
  def tail_fib(n, a \\ 0, b \\ 1)
  def tail_fib(n, a, b) when n > 1 do
     tail_fib(n-1, b, a+b)
  end
  def tail_fib(_, a, _) do
     a
  end



  def main() do
    n = String.to_integer(String.trim(IO.gets ""))
    IO.puts tail_fib(n)
  end
end

Solution.main()
