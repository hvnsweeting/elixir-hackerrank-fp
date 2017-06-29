# https://www.hackerrank.com/challenges/string-o-permute
defmodule Solution do

  def solve(s) do
    chars = String.to_charlist(s)
    couples = Enum.chunk(chars, 2)
    res = couples |> Enum.map(fn c -> [Enum.at(c, 1), Enum.at(c, 0)] end) |> Enum.join("")
    IO.puts res
  end


  def main() do
    IO.gets("")
    lines = IO.read(:stdio, :all)
    lines |> String.split("\n") |> Enum.map(fn x-> solve(x) end)
  end
end
Solution.main()
