#Summary. Creating the caesar cipher by converting plain text to integers and then shifting them to other intengers based on a key.

#assign a-z to 1-25 using an array w positions or using a hash with key value pairs.
# take a string of letters
#convert it to integers
#shift it several places based on the key
#re convert it to a string of letters

def encrypt(string, key)
  #Creating the alphabet hash
  alphabet = {}
  ('a'..'z').to_a.each_with_index do |index, letter|
    alphabet[index] = letter
  end

  #Taking a string and changing it to number_string
  encrypted_array = []
  number_string =  string.split("").map do |letter|
    letter = alphabet[letter] + key
  end
  encrypted_array = []#convert back to String
  number_string.each do |number|
    alphabet.select do |key, value|
      if number == value
        encrypted_array << key
      end
    end
  end
  p encrypted_array.join
end

encrypt("zzzzz", 6)
