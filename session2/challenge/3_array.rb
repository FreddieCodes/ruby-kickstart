# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char # no argument
    to_return = ""
    self.each_char.with_index do |n, index|  # self refers to the instance of the String class
      to_return << n if index.even?
  end
    to_return
  end
end



puts "Freddie".every_other_char