class Primes

  def print_primes_matrix(how_many)
    prime_numbers = get_n_prime_numbers(how_many)
    output_matrix = generate_output_matrix(prime_numbers)
    print_output(output_matrix)
  end

  private

    def generate_output_matrix(input)
      output = generate_multiplication_output_array(input)
      add_headers_to_output_array(input, output)
    end

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

    def print_output(output_array)
      # set column width to the width of the last (largest) element of the matrix
      last_row = output_array[output_array.length-1]
      col_width = last_row[last_row.length-1].to_s.length

      output_array.each do |row_columns|
        row_text = ''

        row_columns.each_with_index do |e, i|
          row_text += " #{e.to_s.rjust(col_width)} |"
        end
        puts row_text
      end
    end

    def get_n_prime_numbers(how_many)
      # going to assume that every 10 numbers has one prime
      sieve_size = how_many * 10

      prime_numbers = sieve_of_eratosthene(sieve_size)

      # this is failover if the sieve returns less than the desired number of primes
      if prime_numbers.length < how_many
        # doubling the sieve size... which is probably way over the top
        prime_numbers = sieve_of_eratosthene(sieve_size * 2)
      end

      prime_numbers[0, how_many]
    end

    # this is taken from:
    # http://stackoverflow.com/questions/11673968/how-do-i-generate-the-first-n-prime-numbers
    # ... dont really believe in reinventing the wheel if i can validate via tests that the
    # code is reliable
    def sieve_of_eratosthene(size)
      arr=(0..size).to_a
      arr[0]=nil
      arr[1]=nil
      max=size
      (size/2+1).times do |n|
          if(arr[n]!=nil) then
              cnt=2*n
              while cnt <= max do
                  arr[cnt]=nil
                  cnt+=n
              end
          end
      end
      arr.compact!
    end

end
