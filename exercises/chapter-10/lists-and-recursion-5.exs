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

  def filter(list, func)
  def filter([], _func),
    do: []
  def filter([ head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, count),
    do: do_split(list, count, [])

  def do_split(list, count, acc)
  def do_split(rest, 0, acc),
    do: {Enum.reverse(acc), rest}
  def do_split([head | tail], count, acc),
    do: do_split(tail, count - 1, [head | acc])

  def take(list, count),
    do: do_take(list, count, [])

  def do_take([], _count, acc),
    do: Enum.reverse(acc)
  def do_take(_list, 0, acc),
    do: Enum.reverse(acc)
  def do_take([head | tail], count, acc),
    do: do_take(tail, count - 1, [head | acc])

end