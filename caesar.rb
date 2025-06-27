def caesar_cipher(text,shift)
 result = ""
 text.each_char do |char|
     if char.match(/[A-Z]/)
          base='A'.ord
          result += ((char.ord - base + shift) % 26 + base).chr
     elsif char.match(/[a-z]/)
          base='a'.ord
          result += ((char.ord - base + shift) % 26 + base).chr
     else
          result += char     
     end
 end
 puts result
end
caesar_cipher("What a string!", 5)