class Encryptor2
  def cipher(rotation)
    characters=(' '..'z').to_a
    rotated_characters=characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end  

  def encrypt_letter(letter,rotation)
    cipher_for_rotation=cipher(rotation)
    cipher_for_rotation[letter]
  end  
  def encrypt(string,rotation)
    results=string.split("").collect do |letter|
      encrypt_letter(letter,rotation)
    end
  results.join
  end
  def decrypt_letter(letter,rotation)
    cipher_for_back_rotation=cipher(rotation)
    cipher_for_back_rotation.key(letter)
  end
  def decrypt(string,rotation)
    results2=string.split("").collect do |letter|
      decrypt_letter(letter,rotation)
    end
   results2.join  
  end      
  def encrypt_file(file, rotation)
    input=File.open(file, "r")
    input2=input.read
    encryption=encrypt(input2,rotation)
    output=File.open(file+".encrypted","w")
    output.write(encryption)
    output.close
  end
  def decrypt_file(file,rotation)
    input=File.open(file, "r")
    input2=input.read
    decryption=decrypt(input2,rotation)
    output_file=file.gsub("encrypted","decrypted")
    output=File.open(output_file,"w")
    output.write(decryption)
    output.close
   end
   def supported_characters
    (' '..'z').to_a
   end 
   def crack(message)
    supported_characters.count.times.collect do |attempt|
      decrypt(message,attempt)
    end
   end    
end    
