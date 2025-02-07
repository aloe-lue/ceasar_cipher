def ceasar_cipher(letter, x)
  shifted_letters = letter.split('').collect do |value|
    ascii_val = value.ord
    is_ascii_val_lowcase = false

    if ascii_val.between?(97, 122)
      #=> lowercase letters
      is_ascii_val_lowcase = true
    elsif ascii_val.between?(65, 90)
      #=> upcase letter
      is_ascii_val_lowcase = false
    else
      is_ascii_val_lowcase = nil
    end

    #=> todo: make use of a method to avoid repeating using the x times

    #=> that is lowcase
    wrapper_val = ascii_val
    if is_ascii_val_lowcase
      x.times do |x_val|
        wrapper_val += 1

        if wrapper_val > 122 #=> if value goes over z then wrap to a
          wrapper_val = 97
        end
      end

      ascii_val = wrapper_val
    elsif is_ascii_val_lowcase == false
      x.times do |x_val|
        wrapper_val += 1

        if wrapper_val > 122 #=> if value goes over Z then wrap to A
          wrapper_val = 97
        end
      end
      ascii_val = wrapper_val 
    else
      ascii_val
    end

    ascii_val.chr #=> convert it to str
  end

  shifted_letters.join
end

puts ceasar_cipher('Hello, World!', 1)
puts ceasar_cipher('The quick brown fox jumps over the lazy dog.', 5)
puts ceasar_cipher('Attack at dawn.', 10)
puts ceasar_cipher('Meet me at the usual place.', 20)
puts ceasar_cipher('Beware of Greeks bearing gifts.', 55)
