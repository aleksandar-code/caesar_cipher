# frozen_string_literal: true

require './lib/caesar_cipher'

describe Caesar do
  describe '#cipher'
    it "works with a negative shift" do 
      expect(subject.cipher("Z", -1)).to eql("Y")
    end

    it "works with a positive shift" do
      expect(subject.cipher("Z", 1)).to eql("A")
    end
    
    it "works with large positive shift" do
      expect(subject.cipher("Z", 83)).to eql("E")
    end

    it "works with large negative shift" do
      expect(subject.cipher("E", -83)).to eql("Z")
    end

    it "works with punctuation and spaces" do
      expect(subject.cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "works with a phrase with a large shift" do
      expect(subject.cipher('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it 'works with a phrase with a large negative shift' do
      expect(subject.cipher('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
end
