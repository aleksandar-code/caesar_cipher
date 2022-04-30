# Create an array for the alphabet
alphabet_upper_case = (65..90).to_a
alphabet_lower_case = (97..122).to_a


# check if the arrays output the right letters
# alphabet_upper_case.each {|num| puts num.chr }
# alphabet_lower_case.each {|num| puts num.chr}

# create a method to handle wrap z to a & vice-versa lowercase and uppercase
def wrap_z_to_a(num)

    if num == 91 # check for uppercase wrap z to a 
        num = 65
    elsif num == 64
        num = 90
    end
    if num == 123 # check for lowercase wrap z to a
        num = 97
    elsif num == 96
        num = 122
    end
    return num
end

# ask user to input his text
def ask_user_input
    print "What text you want me to cipher: "
    string = gets.chomp
    return string
end

