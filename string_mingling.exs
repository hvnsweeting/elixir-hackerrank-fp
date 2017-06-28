# https://www.hackerrank.com/challenges/string-mingling
defmodule Solution do

  def mingling("", "") do
    ""
  end
  def mingling(str1, str2) do
    String.at(str1, 0) <> String.at(str2, 0) <> mingling(String.slice(str1, 1..-1), String.slice(str2, 1..-1))
  end

  def main() do
    str1 = String.trim(IO.gets "")
    str2 = String.trim(IO.gets "")
	IO.write mingling(str1, str2)
  end
end

Solution.main()
