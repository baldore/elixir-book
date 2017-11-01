defmodule MyEnum do
  def all?(list, func \\ fn x -> !!x end)
  def all?([], _func),
    do: true
  def all?([ head | tail ], func),
    do: !!func.(head) and all?(tail, func)

  # def each
  # def filter
  # def split
  # def take
end