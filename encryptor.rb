class Encryptor 
  def cipher(letter, rotation)
  	characters = (' '..'z').to_a
  	rotated_characters = characters.rotate(rotation)
  	pairs = characters.zip(rotated_characters)
  	encrypted_hash = Hash[pairs]
  	encrypted_hash[letter]
  end   

  def encrypt_letter(letter, rotation)
    cipher(letter, rotation)  
  end

  def decrypt_letter(letter, rotation)
  	rotation = -rotation
  	encrypt_letter(letter, rotation)
  end	

  def encrypt_word(word, rotation)
  	word = word.split(//)	
  	decrypted_word = word.collect do |letter|
  	  encrypt_letter(letter, rotation)
  	end
      decrypted_word.join
  end

  def decrypt_word(word, rotation)
    word = word.split(//)	
	decrypted_word = word.collect do |letter|
	  decrypt_letter(letter, rotation)
	end
    decrypted_word.join
  end
end