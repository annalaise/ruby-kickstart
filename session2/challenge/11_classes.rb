# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
attr_accessor :bottles

def initialize(bottles)
# the lines below set bottles at zero and 99 respectively, based boolean arguments for the incoming argument
  bottles = 0 if bottles < 0
  bottles = 99 if bottles > 99
# this then sets the method initialize as 'bottles' by calling bottles on self
  self.bottles = bottles
end

  def print_song
# this line take the bottles value and iterates it down to 1, passing it into the i element set out in the block
    bottles.downto 1 do |i|
# the value of i is then used as the parameter for the print_stanza method, which is defined below.
      print_stanza i
    end
  end

  def print_stanza(n)
# the argument for print_stanza is passed in as n. asked if it's zero. If so, a new String is created.
    if n.zero?
      String.new
# otherwise, print_stanza puts the lyrics to the song, interpolating translate and bottle method outputs
# into the output string. For the final line, the interpolation minuses n to return the new bottle amount.
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  # this method returns either bottle or bottles, depending on n's value
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end


  def translate(n)
# this method takes the value of n and asks if it is greater than 0 but less then 19.
    if 0 <= n && n <= 19
# it then calls [n] on an array of English number nouns for n values 0 - 19, which match perfectly to the index created by them.
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
# this replicates the above with the tenths numbers, if n is divisible by 10 only
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
# prints the output of calling translate on 100 minus n, then n remaining after divided by 10.
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end
