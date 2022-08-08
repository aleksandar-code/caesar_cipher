# frozen_string_literal: true

class Caesar
  def cipher(string, shift, result = '', alphabet = ('a'..'z').to_a)
    string.each_char do |char|
      if alphabet.any?(char.downcase)
        idx = (alphabet.find_index(char.downcase) + shift) % 26
        char = char == char.upcase ? alphabet[idx].upcase : alphabet[idx]
      end
        result += char
    end
    result
  end
end
