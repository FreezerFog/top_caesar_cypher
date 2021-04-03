def caesar_cipher(message, cypher_offset)
  wrap_offset = 26

  # Cleans user input to an offset that will work with ASCII table character positions
  if cypher_offset / 26 > 0 
    cypher_offset = cypher_offset - (26 * (cypher_offset / 26).to_i)
  end

  cyphered_message = message.each_char.map do |character|
    character_shifted_ord = character.ord + cypher_offset

    case character.ord
    when 65..90
      if character.ord + cypher_offset > 90
        character = (character_shifted_ord - wrap_offset).chr
      else
        character = (character_shifted_ord).chr
      end
    when 97..122
      if character.ord + cypher_offset > 122
        character = (character_shifted_ord - wrap_offset).chr
      else
        character = (character_shifted_ord).chr
      end
    else 
      character = character
    end  
  end

  puts cyphered_message.join
end

caesar_cipher("What a string!", 5)
caesar_cipher("I'm a tricky website user! Can the cypher handle this???", 37)