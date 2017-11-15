defmodule Printable do
  @printable_chars ?\s..?~

  def is_printable?([]),
    do: true
  def is_printable?([ head | tail ]),
    do: Enum.member?(@printable_chars, head) && is_printable?(tail)
end