defmodule Sieve do
  def primes(max) when max > 1 do
    calc_primes(Enum.to_list(2..max))
  end

  defp calc_primes([]), do: []
  defp calc_primes([head|tail]) do
    [head | calc_primes(Enum.reject(tail, fn(x) -> rem(x, head) == 0 end))]
  end
end
