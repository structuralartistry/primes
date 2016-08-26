class Primes

  def get_prime_numbers(how_many)

  end

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
