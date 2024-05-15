

def caesar_cipher(string, shift)
  shifted_string = ""
  string.each_char do |letter|
    if letter.match(/[a-zA-Z]/)
      base = letter == letter.downcase ? 'a'.ord : 'A'.ord
      shifted = (letter.ord - base + shift) % 26 + base
      shifted_string << shifted.chr
    else
      shifted_string << letter
    end
  end
  shifted_string
end
