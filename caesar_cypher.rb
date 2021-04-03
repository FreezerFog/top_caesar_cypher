def caesar_cipher(message, cipher_shift)
  wrap_alphabet = 26

  if cipher_shift.abs / 26 > 0
      cipher_shift = cipher_shift - (26 * (cipher_shift / 26).to_i)
  end

  encrypted_message = message.each_char.map do |character|
    character_shifted = character.ord + cipher_shift

    case character.ord
    when 65..90
      if character.ord + cipher_shift > 90 
        character = (character_shifted - wrap_alphabet).chr
      else
        character = (character_shifted).chr
      end
    when 97..122
      if character.ord + cipher_shift > 122 
        character = (character_shifted - wrap_alphabet).chr
      else
        character = (character_shifted).chr
      end
    else 
      character = character
    end
  end

  puts encrypted_message.join
end

caesar_cipher("What a string!", 5)
caesar_cipher("I'm a tricky website user! Can the cipher handle this???", 37)