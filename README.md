# Elixir katas

Set o elixir katas made from time to time to practice programming in elixir language.

## Sieve of Eratosthenes kata

Simple implementation of [sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes). Implemented just for fun and to learn elixir.

### Example

```elixir
iex> Kata.Sieve.primes(100)
[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
```

## Test

```
mix deps.get
mix test
```
