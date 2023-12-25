def caeser_cipher(text, shift_factor)
  offset = shift_factor % 26 # Ensure shift is within range
  cipher_text = text.split('').map do |c|
    if !c.ord.between?(97, 122) and !c.ord.between?(65, 90)
      c # Ensuring only alphabets are ciphered
    elsif c == c.downcase
      ((c.ord - 'a'.ord + offset) % 26 + 'a'.ord).chr # Wraping from 'z' to 'a'
    else
      ((c.ord - 'A'.ord + offset) % 26 + 'A'.ord).chr # Wraping from 'Z' to 'A'
    end
  end
  cipher_text.join('')
end

print(caeser_cipher('The 0din Project!', 21))
