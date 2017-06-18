# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

# this line below sets the method name and the singular argument passed to it (a string)
def pirates_say_arrrrrrrrr(string)
# this line creates a variable called return_string that will take a string passed to it
  return_string = ""
# this sets next_char variable to be false (which is later set as true if a condition is met)
  next_char = false
# this looks at the size of the string, and tells Do to index it by the number of characters
  string.size.times do |index|
# this sets current_char variable to equal the index of the string
    current_char = string[index]
# this inserts the current_char into return_string only if next_char is true
    return_string << current_char if next_char
# and here is the condition to that makes next_char true - if current_char is equal to "r" or "R"
    next_char = (current_char == "r" || current_char == "R")
  end
# this returns the result of return_string once the method has carried out its work
  return_string
end
