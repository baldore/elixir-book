defmodule MyEnum do
  def all?(list, func \\ fn x -> !!x end)
  def all?([], _func),
    do: true
  def all?([ head | tail ], func),
    do: !!func.(head) and all?(tail, func)

  def each(list, func)
  def each([], _func),
    do: :ok
  def each([ head | tail ], func) do
    func.(head)
    each(tail, func)
  end

  # def filter
  # def split
  # def take
end