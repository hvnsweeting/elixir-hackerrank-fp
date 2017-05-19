# https://www.hackerrank.com/challenges/fp-array-of-n-elements
#
defmodule Solution do
  def solve(n) do
    List.duplicate 1, n
  end

  def print(list) do
    IO.puts(inspect(list, limit: -1))
  end

  def main() do
    n = String.to_integer(String.trim(IO.gets ""))
    print(solve(n))
  end
end

Solution.main()
