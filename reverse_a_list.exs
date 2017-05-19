defmodule Solution do
  def reverse([]) do
  end

  def reverse([head| tail]) do
    reverse(tail)
    IO.puts head
  end

  def main() do
	data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
	reverse(data)
  end
end

Solution.main()
