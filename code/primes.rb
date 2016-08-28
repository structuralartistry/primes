class Primes

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

#  def get_prime_numbers(how_many)
#
#  end
#
# input 'n',

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
