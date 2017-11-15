defmodule Calculate do
  def calculate(charlist) do
    ~w(#{charlist})
      |> parse()
      |> do_calculate()
  end

  defp parse([ first, operation, second ]) do
    [ String.to_integer(first), operation, String.to_integer(second) ]
  end

  defp do_calculate([ first, "+", second ]),
    do: first + second
  defp do_calculate([ first, "-", second ]),
    do: first - second
  defp do_calculate([ first, "*", second ]),
    do: first * second
  defp do_calculate([ first, "/", second ]),
    do: first / second
  defp do_calculate([ _, operation, _ ]),
    do: raise "Unknown operation '#{operation}''"
end