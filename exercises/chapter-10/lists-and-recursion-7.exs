defmodule MyList do
  @moduledoc """
  In the last exercise of Chapter 7, Lists and Recursion, on page 65, you wrote a span function. Use it and list comprehensions to return a list of the prime numbers from 2 to n.
  """
  @min 2

  def is_prime(x),
    do: (2..x |> Enum.filter(fn a -> rem(x, a) == 0 end) |> length()) == 1

  def prime_numbers(n),
    do: for x <- @min..n, is_prime(x), do: x
end