# frozen_string_literal: true

require 'pry-byebug'

class Caesar
  def cipher(string, shift)
    string = string.split("")
    new_string = []
    string.each do |char|
      if ("a".."z").to_a.include?(char.downcase)
        char = shift(char, shift)
      end
      new_string << char
    end
    new_string.join()
  end

  def shift(char, shift)
    result = nil
    shift = shift % 26
    alphabet = ("a".."z").to_a
    if alphabet.include?(char.downcase) 
      shift = alphabet.find_index(char.downcase) + shift
          result = alphabet[shift] if shift < alphabet.length
          while result.nil?
            shift = shift % 26
            result = alphabet[shift]
          end
      if char.upcase == char 
        result.upcase
      else
        result
      end
    end
  end
end
