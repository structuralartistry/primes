require 'test_helper'

class PrimesTest < Test::Unit::TestCase

  def test_get_prime_numbers
  end

  def test_sieve_of_eratosthene
    primes = Primes.new

    assert_equal([], primes.sieve_of_eratosthene(0))
    assert_equal([], primes.sieve_of_eratosthene(1))
    assert_equal([2], primes.sieve_of_eratosthene(2))
    assert_equal([2,3], primes.sieve_of_eratosthene(3))
    assert_equal([2,3], primes.sieve_of_eratosthene(4))
    assert_equal([2,3,5], primes.sieve_of_eratosthene(5))
    assert_equal([2,3,5,7], primes.sieve_of_eratosthene(7))
    assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], primes.sieve_of_eratosthene(99))
  end

end
