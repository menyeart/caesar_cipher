#Basic Caesar Cipher (Method for encrypting a single word string with letters 'a-z', using our own alphabet hash instead of ASCI II)

def encrypt_string(string, key)

  #Creating the alphabet hash
  alphabet = {}
  ('a'..'z').to_a.each_with_index do |index, letter|
    alphabet[index] = letter
  end

  #Taking a string and changing it to number_string

  encrypted_array = []
    number_string =  string.downcase.split("").map do |letter|
      letter = alphabet[letter]
      if letter + key > 25
        letter = 25 - letter + key
      else
        letter = letter + key
      end
  end
  number_string.each do |number|
    alphabet.select do |key, value|
      if number == value
        encrypted_array << key
      end
    end
  end
  p encrypted_array.join

end