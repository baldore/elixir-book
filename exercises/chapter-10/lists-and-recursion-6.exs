defmodule MyEnum do
  def flatten(list)
  def flatten([]),
    do: []
  def flatten([head | tail]),
    do: flatten(head) ++ flatten(tail)
  def flatten(value),
    do: [value]
end