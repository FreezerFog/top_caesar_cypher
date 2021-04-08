def caesar_cipher(message, cipher_shift)
  wrap = 26
  cipher_shift -= (26 * (cipher_shift / 26).to_i) if cipher_shift / 26 > 0

  encrypted_message = message.each_char.map do |character|
    character_shifted = character.ord + cipher_shift

    character = 
      case character.ord
      when 65..90
        character_shifted > 90 ? (character_shifted - wrap).chr : character_shifted.chr
      when 97..122
        character_shifted > 122 ? (character_shifted - wrap).chr : character_shifted.chr
      else 
        character
      end
  end

  puts encrypted_message.join
end

caesar_cipher("What a string!", 5)
caesar_cipher("I'm a tricky website user! Can the cipher handle this???", 37)
