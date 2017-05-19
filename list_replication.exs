# https://www.hackerrank.com/challenges/fp-list-replication
#
defmodule Solution do
  def solve(_, []) do
    []
  end

  def solve(s, [head | tail]) do
    List.flatten(List.duplicate([head], s)) ++ solve(s, tail)
  end

  def print([]) do
  end

  def print([head| tail]) do
    IO.puts head
    print(tail)
  end

  def main() do
    s = String.to_integer(String.trim(IO.gets ""))
    data = IO.read(:stdio, :all) |> String.split([" ", "\n"])
    print(solve(s, data))
  end
end

Solution.main()
