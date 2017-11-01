defmodule MyEnum do
  def all?(enumerable, func)
  def all?([], _func),
    do: true
  def all?([ head | tail ], func),
    do: !!func.(head) and all?(tail, func)

  # def each
  # def filter
  # def split
  # def take
end