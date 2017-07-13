defmodule FP.FPTest do
  use ExUnit.Case
  doctest Fp

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "Fib 1 is 0" do
    assert FP.Fibonacci.calculate(1) == 0
  end

  test "Fib 2 is 1" do
    assert FP.Fibonacci.calculate(2) == 1
  end

  test "Fib 3 is 1" do
    assert FP.Fibonacci.calculate(3) == 1
  end

  test "Fib 100 is calculatable" do
    assert FP.Fibonacci.calculate(100) == 218922995834555169026
  end
end
