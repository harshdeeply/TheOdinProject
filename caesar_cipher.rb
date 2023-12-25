def caesar_cipher(text, shift_factor)
  text.downcase!
  offset = shift_factor % 26
  cipher_text = text.split('').map do |c|
    if !c.ord.between?(97, 122)
      c
    else
      ((c.ord - 'a'.ord + offset) % 26 + 'a'.ord).chr
    end
  end
  cipher_text.join('')
end

print(caeser_cipher('The 0din Project!', 21))
