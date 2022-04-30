require 'pry-byebug'
# create a method to handle wrap z to a & vice-versa lowercase and uppercase
def wrap_z_to_a(num)
    binding.pry
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
    binding.pry
    print "What text you want me to cipher: "
    string = gets.chomp
    return string
end
# Ask user for input, i should convert it to numbers, lowercase/uppercase

def convert_to_number_input (input)
    
    to_convert_input = input
    input = to_convert_input.ord
   
    return input
end
# ask user for key 
def ask_key
    binding.pry
    print "Give me the key for cipher: "
    string = gets.chomp
    
    return string
end

def key_minus_num (num, key)
    
    binding.pry
    
    key = key.to_i
    
    z = 0
    num2 = 0
    while key > z do   # will add key minus each number and use wrap z to a at each iteration (each time we do minus to a num)
        num -= 1
        # wrap z to a 
        num2 = wrap_z_to_a(num)
  
        z = z + 1
    end
    return num2
end
# i have to create a method to use my inputs to be able to return an output.
# the inputs are the string of letters and the key.
# i have to pack key, array of numbers and wrap z to a 
# a for loop that will -1 each time on the number
def the_cipher (string)
    binding.pry
    key = ask_key
    num = 0
    x = string.length
    y = 0
    num2 = 0
    while x > y do
        num += convert_to_number_input(string)
        # will add key minus each number and use wrap z to a at each iteration (each time we do minus to a num)
        num2 = key_minus_num(num, key)
        y += 1
    end

   letter = num2.chr
    return letter
end
#  now i have the input converted to number, i have to create a variable to hold the key
binding.pry
converted_in_numbers = the_cipher(ask_user_input)
puts converted_in_numbers
 


