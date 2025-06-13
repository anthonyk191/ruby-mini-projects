#Ceasar Cipher Hash Map
numbers = (1..26).to_a
alphabet = ('a'..'z').to_a
$hashmap_alphabet_to_numbers = {}
$hashmap_CAPITAL = {}
$hashmap_numbers_to_alphabet = {}

(0...26).each do |i|
    $hashmap_numbers_to_alphabet[numbers[i].to_s] = alphabet[i]
    $hashmap_alphabet_to_numbers[alphabet[i].to_s] = numbers[i]
    $hashmap_CAPITAL[alphabet[i].to_s.upcase] = numbers[i]
end

# puts hashmap_alphabet_to_numbers
# puts hashmap_numbers_to_alphabet

def caesar_cipher(string, cipher_number)
    string_copy = string.downcase.split("")
    output = ''
    string_copy.each_with_index do |letter, index|
        replaced_string = $hashmap_alphabet_to_numbers[letter].to_i + cipher_number
        if replaced_string > 26
            replaced_string -= 26
        end
        if $hashmap_CAPITAL.has_key?(string.split("")[index])
            string_copy[index] = $hashmap_numbers_to_alphabet[replaced_string.to_s].upcase
        elsif $hashmap_alphabet_to_numbers.has_key?(string.split("")[index])
            string_copy[index] = $hashmap_numbers_to_alphabet[replaced_string.to_s]
        else
            string_copy[index] = string.split("")[index]
        end
    end
    puts ("Converting #{string} to #{string_copy.join}")
end

caesar_cipher('AbcDE!',1)