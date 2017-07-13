defmodule FP.Fibonacci do
  @moduledoc """
  Solution for https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---fibonacci-numbers
  """

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

  @doc """
  Calculate Nth fibonacci number, using tail-recursive.

  """
  def calculate(n, a \\ 0, b \\ 1)
  def calculate(n, a, b) when n > 1 do
     calculate(n-1, b, a+b)
  end
  def calculate(_, a, _) do
     a
  end

  def main() do
    n = String.to_integer(String.trim(IO.gets ""))
    IO.puts calculate(n)
  end
end

# Solution.main()
