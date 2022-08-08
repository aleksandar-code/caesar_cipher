# frozen_string_literal: true

class Caesar
  def cipher(string, shift)
    string = string.split("")
    new_string = []
    alphabet = ("a".."z").to_a
    string.each do |char|
      if alphabet.include?(char.downcase)
        idx = (alphabet.find_index(char.downcase) + shift) % 26
        char = char == char.upcase ? alphabet[idx].upcase : alphabet[idx]
      end
      new_string << char
    end
    new_string.join()
  end
end
