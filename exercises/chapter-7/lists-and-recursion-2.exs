defmodule MyList do
  def max(list),
    do: list |> Enum.reduce(&compare/2)

  defp compare(a, b),
    do: if a > b, do: a, else: b
end