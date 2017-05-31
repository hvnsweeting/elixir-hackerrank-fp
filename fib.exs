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

  def main() do
    n = String.to_integer(String.trim(IO.gets ""))
    # data = IO.read(:stdio, :all) |> String.split([" ", "\n"])
    IO.puts fib(n)
  end
end

Solution.main()
