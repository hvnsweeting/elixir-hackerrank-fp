# https://www.hackerrank.com/challenges/eval-ex
#
defmodule Solution do
  def fact(x) when x > 0 do
    x * fact(x - 1)
  end
  def fact(_)  do
    1
  end

  def exp(x) do
    0..9 |> Enum.map(fn(i) -> :math.pow(x,i)/fact(i) end) |> Enum.sum
  end

  def print([head|tail]) do
    IO.puts head
    print(tail)
  end
  def print([]) do
  end

  def main() do
    _ = String.to_integer(String.trim(IO.gets ""))
	data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
        |> Enum.map(fn(x) -> String.to_float(x) end ) |> Enum.map(fn(x) -> exp(x) end)
    print(data)
  end
end

Solution.main()
