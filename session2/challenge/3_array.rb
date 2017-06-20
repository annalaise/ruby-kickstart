# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string_array = ""
# the line below calls the each_char string method, which passes each character in a string to the given
# block. with_index then indexes each character. The line then initialises a block and sets char
# and index as the objects it is being passed.
    each_char.with_index do |char, index|
# this line inserts char into the string_array if the index is even.
    string_array << char if index.even?
    end
    string_array
  end
end
