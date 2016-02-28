defmodule Kata.FizzBuzz do
  @doc ~S"""
  Fizz Buzz game

  ## Examples
    iex> Kata.FizzBuzz.talk(1)
    1

    iex> Kata.FizzBuzz.talk(3)
    "Fizz"

    iex> Kata.FizzBuzz.talk(5)
    "Buzz"

    iex> Kata.FizzBuzz.talk(15)
    "FizzBuzz"
  """
  def talk(nr) when rem(nr, 15) == 0, do: "FizzBuzz"
  def talk(nr) when rem(nr, 3)  == 0, do: "Fizz"
  def talk(nr) when rem(nr, 5)  == 0, do: "Buzz"
  def talk(nr),                       do: nr

  @doc ~S"""
  Fizz Buzz game different approach.

  ## Examples
    iex> Kata.FizzBuzz.talk2(1)
    1

    iex> Kata.FizzBuzz.talk2(3)
    "Fizz"

    iex> Kata.FizzBuzz.talk2(5)
    "Buzz"

    iex> Kata.FizzBuzz.talk2(15)
    "FizzBuzz"
  """
  def  talk2(nr),       do: talk2(rem(nr, 3), rem(nr, 5), nr)
  defp talk2(0, 0, _),  do: "FizzBuzz"
  defp talk2(0, _, _),  do: "Fizz"
  defp talk2(_, 0, _),  do: "Buzz"
  defp talk2(_, _, nr), do: nr
end
