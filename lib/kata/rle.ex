defmodule Kata.RLE do
  @doc ~S"""
  Run-Length Encoding

  ## Examples
    iex> Kata.RLE.encode([])
    []

    iex> Kata.RLE.encode([1, 2, 3])
    [1, 2, 3]

    iex> Kata.RLE.encode([1, 2, 2, 3])
    [1, {2, 2}, 3]

    iex> Kata.RLE.encode([1, 2, 2, 2, 3])
    [1, {2, 3}, 3]

    iex> Kata.RLE.encode([1, 2, 2, 2, 3, 4, 4, 5, 6, 6, 6, 6])
    [1, {2, 3}, 3, {4, 2}, 5, {6, 4}]
  """
  def encode([]),                       do: []
  def encode([head, head | tail]),      do: encode([{head, 2} | tail])
  def encode([{head, n}, head | tail]), do: encode([{head, n + 1} | tail])
  def encode([head | tail]),            do: [head | encode(tail)]
end
