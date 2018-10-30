# require "pretty_number/version"

module PrettyNumber
  DefaultEncryptArray = ["U", "P", "L", "N", "8", "v", "S", "J", "j", "A", "7", "p", "1", "x", "X", "4", "Y", "l", "s", "k", "G", "Q", "V", "E", "w", "d", "z", "r", "c", "5", "g", "B", "9", "o", "W", "q", "C", "T", "F", "h", "3", "Z", "n", "0", "2", "i", "u", "O", "I", "e", "a", "K", "m", "b", "M", "6", "D", "f", "H", "t", "y", "R"]

  def self.init encrypt_array
    @encrypt_array = encrypt_array.is_a?(Array) ? encrypt_array : nil
    return self
  end

  def self.encrypt_array
    encrypt_array = @encrypt_array || DefaultEncryptArray
  end

  def self.encrypt number
    begin
      radix = encrypt_array.count
      convert_array =[]
      while number != 0 do
        merchant, arithmetical_compliment = number.divmod radix
        convert_array << arithmetical_compliment
        number = merchant
      end
      convert_array = [0] if convert_array.empty?
      secret_str = convert_array.reverse.map{|i| encrypt_array.at(i)}.join
    rescue => e
      return nil
    end
  end

  def self.decrypt encryption_code
    begin
      radix = encrypt_array.count
      secret_hash = Hash[encrypt_array.map.with_index.to_a]
      convert_array = encryption_code.each_char.map{|i| secret_hash[i]}
      number = 0
      convert_array.reverse.each_with_index do |i, index|
        number += i*radix**index
      end
      return number
    rescue => e
      return nil
    end
  end

end
