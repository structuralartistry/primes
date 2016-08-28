class Primes

  def generate_multiplication_output_array(input)
    output = []

    input.each_with_index do |number, index|
      output[index] = []
      input.each_with_index do |n, i|
        output[index][i] = number * n
      end
    end

    output
  end

  def add_headers_to_output_array(input, output_array)
    # add the vertical first row header
    output_array.each_with_index do |e, i|
      e.unshift(input[i])
    end

    # add the top row
    input.unshift(nil)
    output_array.unshift(input)

    output_array
  end

#  def get_prime_numbers(how_many)
#
#  end
#
## input 'n',
#  def sieve_of_eratosthene(size)
#      arr=(0..size).to_a
#      arr[0]=nil
#      arr[1]=nil
#      max=size
#      (size/2+1).times do |n|
#          if(arr[n]!=nil) then
#              cnt=2*n
#              while cnt <= max do
#                  arr[cnt]=nil
#                  cnt+=n
#              end
#          end
#      end
#      arr.compact!
#  end
#
end
