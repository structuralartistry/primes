Written using Ruby 2.2.1p85

To run tests:

  `rake` in console

To run code:

  1) start IRB session in console `irb`
  2) `load 'code/primes.rb'
  3) `Primes.new.print_primes_matrix(n)` where 'n' is now many primes you wish to deliver

Notes/Comments:

  * I used a sieve that I found online and have credited the source
  * Output on console gets wonky if screen size cant hold the matrix rows
  * I realize some believe that you should not test/need to test private methods. I differ.
  * Using Sieve of Eratosthene seems from reading up to be the best way to do this.
    I have not done an in depth profiling or written non-sieve code and compared them
    but it's something I'd do if I had more time or if it was really an important consideration.

TASK

  Objective

  Write a program that prints out a multiplication table of the first 10 prime number.

  ● The program must run from the command line and print one table to STDOUT.

  ● The first row and column of the table should have the 10 primes, with each cell

  containing the product of the primes for the corresponding row and column.

  Notes

  ● Consider complexity. How fast does your code run? How does it scale?

  ● Consider cases where we want N primes.

  ● Do not use the Prime class from stdlib (write your own code).

  ● Write tests. Try to demonstrate TDD/BDD.

  ● If you’re using external dependencies please specify those dependencies and how to

  install them.

  ● Please package your code, OR include running instructions.

  When you’re done

  Put your code on GitHub or email us a zip/tarball.
