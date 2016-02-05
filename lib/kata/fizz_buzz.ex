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
end
