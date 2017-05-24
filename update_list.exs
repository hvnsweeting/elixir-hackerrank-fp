defmodule Solution do
  def print([head| tail]) do
    IO.puts head
    print(tail)
  end
  def print([]) do
  end

  def main() do
    data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
           |> Enum.map(fn(x) -> abs(String.to_integer(x)) end)
	print(data)
  end
end

Solution.main()
