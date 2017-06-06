# https://www.hackerrank.com/challenges/pascals-triangle?h_r=next-challenge&h_v=zen
#
defmodule Solution do

  def factorial(n) when n == 0 do
    1
  end
  def factorial(n) do
    n * factorial(n-1)
  end

  def solve(n) when n == 0 do
    IO.puts "1"
  end

  def solve(n) do
    solve(n-1)
    IO.puts row(n)
  end


  def row(n) do
    0..n |> Enum.map(fn r -> round(factorial(n)/(factorial(r) * factorial(n - r))) end) |> Enum.join(" ")
  end

  def main() do
    n = String.to_integer(String.trim(IO.gets ""))
    # data = IO.read(:stdio, :all) |> String.split([" ", "\n"])
    solve(n-1)
  end
end

Solution.main()
