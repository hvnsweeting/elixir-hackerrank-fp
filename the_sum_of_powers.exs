# https://www.hackerrank.com/challenges/functional-programming-the-sums-of-powers

defmodule Solution do
  def solve(0, _, _) do
    1
  end
  def solve(x, _, _) when x < 0 do
    0
  end
  def solve(_, _, c) when c <= 0 do
    0
  end

  def solve(x, n, maxallow) do
    maxallow..1 |> Enum.map(fn i -> solve(x - round(:math.pow(i, n)), n, i-1) end) |> Enum.sum
  end


  def main() do
    x = IO.gets("") |> String.strip() |> String.to_integer
    n = IO.gets("") |> String.strip() |> String.to_integer
    root = round :math.pow(x, 1/n)
    IO.puts solve(x, n, root)
  end
end

Solution.main()
