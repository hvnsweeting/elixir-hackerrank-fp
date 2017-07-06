# https://www.hackerrank.com/challenges/string-reductions

defmodule Solution do
  def main() do
    IO.gets("")
      |> String.strip()
	  |> String.to_charlist()
	  |> Enum.uniq()
      |> IO.puts()
  end
end

Solution.main()
