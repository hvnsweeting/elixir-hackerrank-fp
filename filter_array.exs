defmodule Solution do
  def filter(_, []) do
  end

  def filter(n, [head| tail]) do
    head = String.to_integer(head)
    if (head < n) do
      IO.puts head
    end
    filter(n, tail)
  end

  def main() do
	s = String.to_integer(String.trim(IO.gets ""))
	data = IO.read(:stdio, :all) |> String.trim |> String.split([" ", "\n"])
    IO.puts(length(data))
    IO.puts(data)

	filter(s, data)
  end
end

Solution.main()
