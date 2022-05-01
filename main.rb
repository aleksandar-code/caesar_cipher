require 'pry-byebug'
# create a method to handle wrap z to a & vice-versa lowercase and uppercase
def wrap_z_to_a(num, lower_or_upper)
    
    if lower_or_upper == "lower"
        if num > 122  # check for lowercase wrap z to a
            num = 97
        elsif num < 97
            num = 122
        end
    end
    
    if lower_or_upper == "upper"
        if num > 90 # check for uppercase wrap z to a 
            num = 65
        elsif num < 65
            num = 90
        end
    end
    return num
    
end
# ask user to input his text
def ask_user_input
    print "What text you want me to cipher: "
    string = gets.chomp
    return string
end
# ask user for key 
def ask_key
    print "Give me the key for cipher: "
    int = gets.chomp.to_i
    result = verify_key(int)
    if result == "error"
        return result
    else
        return int
    end
    
end

def verify_key(key)
    if key > 0 && key <= 26
        return key
    else
        puts "No negative or above 26 key"
        return "error"
    end
    
end

# convert input to numbers character by character
def convert_to_number_input (input)
    to_convert_input = input
    input = to_convert_input.ord
    return input
end

# operate the key and num 
def key_minus_num (num, key, lower_or_upper)
    
    
    
    z = 0
   
    while key > z do   # will add key minus each number and use wrap z to a at each iteration (each time we do minus to a num)
        
        num += 1
        # wrap z to a 
        num = wrap_z_to_a(num, lower_or_upper)
        z = z + 1
    end
    
    return num
end
# check if lower or uppercase
def lower_or_upper_case (num)
    result = ""
    if num.chr == num.chr.downcase
        result = "lower" 
    elsif num.chr == num.chr.upcase
        result = "upper"
    end
    
    return result
end
    
# cipher key should only act on the characters, not on blank space, punctuation..
def the_cipher (string)
    lower_or_upper = ""
    key = ask_key
    if key == "error"
        return
    end
    num = 0
    y = 0
    num2 = 0
    letters = ""
    # split the string into chars
     string = string.split("")

    string.each do |char|
        
        num = convert_to_number_input(char)
        # check if lower or uppercase
        lower_or_upper = lower_or_upper_case(num)
        # will add key minus each number and use wrap z to a at each iteration (each time we do minus to a num)
        num2 = key_minus_num(num, key, lower_or_upper)
        letters += num2.chr
        y += 1
    end
# join letters together back in like in the original string but ciphered
   
    return letters
end
#  now i have the input converted to number, i have to create a variable to hold the key

final_text = the_cipher(ask_user_input)
puts final_text
 


