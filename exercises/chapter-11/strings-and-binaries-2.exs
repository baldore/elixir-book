defmodule Anagram do
  defp process_for_comparison(str) do
    str
      |> to_string()
      |> String.downcase()
      |> String.to_charlist()
      |> Enum.sort()
  end

  def anagram?(word1, word2),
    do: process_for_comparison(word1) == process_for_comparison(word2)
end