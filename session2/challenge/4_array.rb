# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(x)
# the line below calls select on the array argument passed to get_squares. This is then passed into the
# block as an input, and asks if the array includes the number squared. This is then sorted.
  x.select { |n| x.include? n*n }.sort
end
