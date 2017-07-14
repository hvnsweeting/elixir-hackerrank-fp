# https://www.hackerrank.com/challenges/super-digit


defmodule Solution do
  def solve(n, k) do
    # given k, but we observe that we just need to
    # calculate n then multiply by k
    temp = super_digit(n)
    temp = temp * k
    IO.puts(super_digit(temp))
  end

  def super_digit(p) when p < 10 do
    p
  end
  def super_digit(p) do
    p |> Integer.to_string |> String.split("") |> Enum.slice(0..-2) |> Enum.map(fn x -> String.to_integer(x) end) |> Enum.sum |> super_digit
  end

  def main() do
    {n, k} = IO.gets("") |> String.trim
                      |> String.split(" ")
                      |> Enum.map(fn x -> String.to_integer(x) end)
                      |> List.to_tuple
    solve(n, k)
  end
end

Solution.main()
