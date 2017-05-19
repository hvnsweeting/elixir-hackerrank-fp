defmodule Solution do
  def solve(list) do
    Enum.filter(Enum.with_index(list), fn({_,idx}) -> rem(idx, 2) == 1 end) |> Enum.map(fn({x, _}) -> x end)
  end

  def print([]) do
  end

  def print([head|tail]) do
    IO.puts head
    print(tail)
  end

  def main() do
	data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
	print(solve(data))
  end
end

Solution.main()
