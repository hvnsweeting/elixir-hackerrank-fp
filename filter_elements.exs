# https://www.hackerrank.com/challenges/filter-elements
defmodule Solution do

  def solve(numbers, times) do
    freqs = numbers |> Enum.group_by(fn x-> x end)
              |> Map.to_list()
              |> Enum.map(fn ({k, v})-> {k, length(v)} end)
              |> Enum.filter(fn ({_, v}) -> v >= times end)
              |> Map.new
# IO.inspect freqs
    res = numbers |> Enum.uniq |> Enum.filter(fn x -> Map.get(freqs, x) end)
    case length(res) do
      0 -> IO.puts(-1)
      _ -> IO.puts(Enum.join(res, " "))
    end
# res
  end

  def main() do
    IO.gets("")
    lines = IO.read(:stdio, :all)
    inp = lines |> String.split("\n") |> Enum.chunk(2) |> Enum.map(fn ([first, elems]) -> {String.split(elems, " "), String.to_integer(Enum.at(String.split(first, " "), -1))} end)
# IO.inspect(inp)
    inp |> Enum.map(fn ({list, rep}) -> solve(list, rep) end)
  end
end

Solution.main()
