defmodule Chop do
  def guess(number_to_guess, range) do
    _guess(number_to_guess, range, halfway(range))
  end

  def _guess(number_to_guess, _, guessed) when number_to_guess == guessed do
    IO.puts "Is it #{guessed}"

    number_to_guess
  end

  def _guess(number_to_guess, l.._, guessed) when number_to_guess < guessed do
    IO.puts "Is it #{guessed}"

    new_range = l..(guessed - 1)
    _guess(number_to_guess, new_range, halfway(new_range))
  end

  def _guess(number_to_guess, _..h, guessed) when number_to_guess > guessed do
    IO.puts "Is it #{guessed}"

    new_range = (guessed + 1)..h
    _guess(number_to_guess, new_range, halfway(new_range))
  end

  def halfway(l..h) do
    l + div(h - l, 2)
  end
end
