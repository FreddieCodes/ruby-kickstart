# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    # sets variable to_return to ""
    to_return = ""
    # sets variable add_next to falshee
    add_next = false
    # calls the length methods on the parameter string then puts it through a times loop
    # the length of the string tells the computer how many times to iterate
    string.length.times do |index|
        # sets current_char variable to string[index]
        current_char = string[index]
        # << = concatenate. concatenate to the to_return variable if current char = true
        to_return << current_char if add_next
        # add_next = boolean 
        add_next = (current_char == "r" || current_char == "R")
    end
    # calls variable
    to_return
end
