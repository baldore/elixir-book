defmodule MyList do
  def reduce(list, value, func)
  def reduce([], value, _),
    do: value
  def reduce([ head | tail ], value, func),
    do: reduce(tail, func.(head, value), func)
end