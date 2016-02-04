# Elixir katas [![Build Status](https://travis-ci.org/mkasztelnik/elixir-kata.svg)](https://travis-ci.org/mkasztelnik/elixir-kata)

Set o elixir katas made from time to time to practice programming in elixir language.

## [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) kata

```elixir
iex> Kata.Sieve.primes(100)
[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
```

## [Run-Length Encoding](https://pl.wikipedia.org/wiki/RLE) kata

```elixir
iex> Kata.RLE.encode([1, 2, 2, 2, 3, 4, 4, 5, 6, 6, 6, 6])
[1, {2, 3}, 3, {4, 2}, 5, {6, 4}]
```


## Test

```
mix deps.get
mix test
```
