defmodule Kata.Sieve do
  @doc ~S"""
  Calculate prime numbers from `2..max` range.

  ## Examples
    iex> Kata.Sieve.primes(100)
    [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
     43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
  """
  def primes(max) when max > 1 do
    2..max |> Enum.to_list |> calc_primes
  end

  defp calc_primes([]), do: []
  defp calc_primes([head | tail]) do
    [head | tail |> rm_multiplicity(head) |> calc_primes]
  end

  defp rm_multiplicity(list, nr) do
    list |> Enum.reject(&rem(&1, nr) == 0)
  end
end
