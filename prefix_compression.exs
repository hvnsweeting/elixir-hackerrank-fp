# https://www.hackerrank.com/challenges/string-reductions?h_r=next-challenge&h_v=zen
defmodule Solution do

  def find_suffix([[h1|t1], [h2|t2]]) do
    if h1 == h2 do
      find_suffix([t1, t2])
    else
      IO.puts Integer.to_string(length(t1) + 1) <> " " <> List.to_string([h1|t1])
      IO.puts Integer.to_string(length(t2) + 1) <> " " <> List.to_string([h2|t2])
    end
  end

  def find_suffix([[], s2]) do
    IO.puts 0
    IO.puts(Integer.to_string(length(s2)) <> " " <> List.to_string(s2))
  end

  def find_suffix([s1, []]) do
    IO.puts(Integer.to_string(length(s1)) <> " " <> List.to_string(s1))
    IO.puts 0
  end



  def find_prefix([l1, l2]) do
    prefix = Enum.zip(l1, l2)
               |> Enum.take_while(fn ({x1, x2}) -> x1 == x2 end)
               |> Enum.map(fn ({x1, _}) -> x1 end) |> List.to_string
    IO.puts(Integer.to_string(String.length(prefix)) <> " " <> prefix)

    find_suffix([l1, l2])
  end

  def main() do
    String.strip(IO.read(:stdio, :all))
      |> String.split("\n")
      |> Enum.map(&String.to_charlist/1)
      |> find_prefix
  end
end
Solution.main()
