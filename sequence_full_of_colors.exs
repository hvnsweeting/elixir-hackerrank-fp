# https://www.hackerrank.com/challenges/sequence-full-of-colors
defmodule Solution do
  def solve(s) do
    n = byte_size(s)
    r = check(s, n, 0, 0, 0, 0, 0)
    if r == true do
      IO.puts "True"
    else
      IO.puts "False"
    end
  end

  defp check(s, n, idx, r, g, b, y) do
    if abs(r - g) > 1 or abs(y - b) > 1 do
      false
    else
      if idx == n do
        if r == g and y == b do
          true
        else
          false
        end
      else
        h = binary_part(s, idx, 1)
        case h do
          "R" -> check(s, n, idx + 1, r+1, g, b, y)
          "G" -> check(s, n, idx + 1, r, g+1, b, y)
          "B" -> check(s, n, idx + 1, r, g, b+1, y)
          "Y" -> check(s, n, idx + 1, r, g, b, y+1)
        end
      end
    end
  end

  def main() do
    IO.gets("")
    String.strip(IO.read(:stdio, :all))
      |> String.split("\n")
      |> Enum.map(&solve/1)
  end
end
Solution.main()
