# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

# the line below sets the method name and the arguments that are passed to it
def odds_and_evens(string, return_odds)
# this is setting the return_string variable to an empty string, so a new string can be passed into it
  return_string = ""
# this takes the string argument passed to it, and calls the size method on it, giving the strings length.
# This number is then passed to the times method, telling the next set of instructions how many times to loop.
# and then, it's asking for each character in the string to be assigned 'index'
  string.size.times do |index|
# the first next if statement is saying 'If return_odds boolean and index.even are both true, skip this'
    next if return_odds && index.even?
# the second next if statement is saying 'if return_odds and index.odd are not the same, skip this too'
    next if !return_odds && index.odd?
# this then inserts the remaining string index into the return_string empty string
    return_string << string[index]
  end
# this then returns what is in the return_string variable after the method has completed its work
  return_string
end
