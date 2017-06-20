# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# the method name ends with a ? because we want the output to be true or false
def got_three?(elements)
# each_cons is a method that takes an enumerable collection and cascades through them.In this case, by three consecutively.
  elements.each_cons 3 do |a, b, c|
# the next line returns true if, when looking at a set of 3 objects that run consecutively, a is equal
# to b, and b is also equal to c.
    return true if a == b && b == c
  end
  false
end
