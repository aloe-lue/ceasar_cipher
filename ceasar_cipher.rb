
def ceasar_cipher(letter, x)
  shifted_letters = letter.split('').collect do |value|
    ascii_val = value.ord

    #=> lowercase letters
    if ascii_val >= 97 and ascii_val <= 122
      wrapper = ascii_val

      x.times do |x_val|
        wrapper += 1

      #=> wraps z to a
        if wrapper > 122
          wrapper = 97
        end
      end

      ascii_val = wrapper
      ascii_val
    elsif ascii_val >= 65 and ascii_val <= 90
      wrapper = ascii_val

      x.times do |x_val|
        wrapper += 1

        #=> wraps Z to A 
        if wrapper > 90
          wrapper = 65 
        end
      end

      ascii_val = wrapper
      ascii_val
    else
      #=> if character was a symbol then don't add
      ascii_val
    end

    ascii_val.chr
  end

  shifted_letters.join
end

puts ceasar_cipher('Hello, World!', 1)
puts ceasar_cipher('The quick brown fox jumps over the lazy dog.', 5)
puts ceasar_cipher('Attack at dawn.', 10)
puts ceasar_cipher('Meet me at the usual place.', 20)
puts ceasar_cipher('Beware of Greeks bearing gifts.', 55)
