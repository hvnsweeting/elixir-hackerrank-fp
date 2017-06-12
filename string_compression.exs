# https://www.hackerrank.com/challenges/string-compression
# RLE
defmodule Solution do
  def comp(chars) do
    case length(chars) do
      1 -> chars
      _ -> to_string([hd chars]) <> Integer.to_string(length(chars))
    end
  end

  def compress(message) do
    res = message |> String.to_charlist |> Enum.chunk_by(&(&1)) |> Enum.map(&comp(&1))
    IO.puts res
  end

  def main() do
    message = String.trim(IO.gets "")
	compress(message)
  end
end

Solution.main()
