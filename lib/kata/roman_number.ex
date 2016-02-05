defmodule Kata.RomanNumeral do

  @numerals [{10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}]

  @doc ~S"""
  Converts arabic to roman number

  ## Examples
    iex> Kata.RomanNumeral.converts(0)
    ""

    iex> Kata.RomanNumeral.converts(1)
    "I"

    iex> Kata.RomanNumeral.converts(2)
    "II"

    iex> Kata.RomanNumeral.converts(3)
    "III"

    iex> Kata.RomanNumeral.converts(4)
    "IV"

    iex> Kata.RomanNumeral.converts(5)
    "V"

    iex> Kata.RomanNumeral.converts(6)
    "VI"

    iex> Kata.RomanNumeral.converts(9)
    "IX"

    iex> Kata.RomanNumeral.converts(10)
    "X"

    iex> Kata.RomanNumeral.converts(28)
    "XXVIII"
  """
  def converts(number), do: converts(number, @numerals)
  defp converts(number, _) when number < 1, do: ""
  defp converts(number, [{arabic, roman} | _]) when number >= arabic do
    roman <> converts(number - arabic)
  end
  defp converts(number, [_ | tail]), do: converts(number, tail)
end
