# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

  class Integer
    def prime?
# this line returns false if prime? is less than 2:
      return false if self < 2
# this line says from 2 up to the square root of self, assign i to each object passed to it:
      2.upto Math.sqrt(self) do |i|
# this line returns false if self is divisible by 1 with no remaining
        return false if self % i == 0
      end
# this line sets prime? to be true
      true
    end
  end

  def prime_chars?(strings)
# this line takes the argument strings (the strings array) and joins them together, calculates the length,
# and then calls the prime? method on this. 
    strings.join.length.prime?
    end
