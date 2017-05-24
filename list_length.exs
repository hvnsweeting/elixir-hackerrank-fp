defmodule Solution do
  def len([_|tail]) do
    1 + len(tail)
  end
  def len([]) do
    0
  end
  def main() do
    data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
	IO.puts len(data)
  end
end

Solution.main()
