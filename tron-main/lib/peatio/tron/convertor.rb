require 'digest/sha3'
module Peatio
  module Tron
    class Convertor
      ALPHABET = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz'

      class << self
        # hexstring to base58 checksum
        def base58_encode(hexstring)
          sha256 = sha256_encode(sha256_encode(hexstring))
          (hexstring + sha256[0, 8]).hex.digits(58).reverse.map {|i| ALPHABET[i]}.join
        end

        # base58 checksum to hexstring
        def base58_decode(base58_address)
          base58_to_binary(base58_address)
        end

        def to_hex(str)
          str.unpack('H*')[0]
        end

        def from_hex(str)
          [str].pack('H*')
        end

        private

        def sha256_encode(hexstring)
          Digest::SHA256.hexdigest([hexstring].pack('H*'))
        end

        def base58_to_int(base58_val)
          int_val = 0
          base58_val.reverse.split(//).each_with_index do |char, index|
            char_index = ALPHABET.index(char)
            int_val += (char_index) * (ALPHABET.length ** (index))
          end
          int_val
        end

        def base58_to_binary(base58_val)
          int_to_hex(base58_to_int(base58_val))[0, 42]
        end

        def int_to_hex int
          hex = int.to_s(16)
          (hex.length % 2 == 0) ? hex : ('0' + hex)
        end
      end
    end
  end
end
