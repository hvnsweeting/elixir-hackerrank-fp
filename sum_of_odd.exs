defmodule Solution do
  def main() do
    data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
          |> Enum.map(fn(x) -> String.to_integer(x) end)
          |> Enum.filter(fn(x) -> rem(x, 2) == 1 end)
          |> Enum.sum
	IO.puts data
  end
end

Solution.main()
