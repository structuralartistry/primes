require 'test_helper'

class PrimesTest < Test::Unit::TestCase

  def test_generate_multiplication_output_array
    primes = Primes.new
    input = [2,3,5,7,11,13,17,19,23,29]

    output = primes.generate_multiplication_output_array(input)

    assert_equal(10, output.length)

    assert_equal(4, output[0][0])
    assert_equal(121, output[4][4])
    assert_equal(841, output[9][9])
  end

  def test_add_header_rows_to_output_array
    primes = Primes.new
    input = [2,3,5]
    output_array = [[4, 6, 10], [6, 9, 15], [10, 15, 25]]

    output_with_headers = primes.add_headers_to_output_array(input, output_array)

    assert_equal(4, output_with_headers.length)

    assert_equal(3, output_with_headers[2][0])
    output_with_headers.each { |i| assert_equal(4, i.length) }
  end

#  def test_get_prime_numbers
#    assert_equal([2, 3, 5, 7, 11], primes.get_prime_numbers(5))
#  end
#
#  def test_sieve_of_eratosthene
#    primes = Primes.new
#
#    assert_equal([], primes.sieve_of_eratosthene(0))
#    assert_equal([], primes.sieve_of_eratosthene(1))
#    assert_equal([2], primes.sieve_of_eratosthene(2))
#    assert_equal([2,3], primes.sieve_of_eratosthene(3))
#    assert_equal([2,3], primes.sieve_of_eratosthene(4))
#    assert_equal([2,3,5], primes.sieve_of_eratosthene(5))
#    assert_equal([2,3,5,7], primes.sieve_of_eratosthene(7))
#    assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], primes.sieve_of_eratosthene(99))
#  end

end
