require_relative 'parse'
require_relative 'rotor'

class Decryptor
	attr_reader :message, :parse, :rotor, :char_map, :rev_map
	attr_accessor :a, :b, :c, :d

	def initialize(message = "u")
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
		@decrypted_message = []
		@parse = Parse.new(message)

		@a = Rotor.new.a_rotation
		@b = Rotor.new.b_rotation
		@c = Rotor.new.c_rotation
		@d = Rotor.new.d_rotation
	end

	def decrypt_message
		i     = 0
		count = (@parse.message.length) / 4
		count.times do

			rotated_map_a = char_map.rotate(parse.char_indicies[i])
			char_a        = rotated_map_a.rotate(-a)[0]
			@decrypted_message.push(char_a)
			i = i + 1

			rotated_map_b = char_map.rotate(parse.char_indicies[i])
			char_b        = rotated_map_b.rotate(-b)[0]
			@decrypted_message.push(char_b)
			i = i + 1

			rotated_map_c = char_map.rotate(parse.char_indicies[i])
			char_c        = rotated_map_c.rotate(-c)[0]
			@decrypted_message.push(char_c)
			i = i + 1

			rotated_map_d = char_map.rotate(parse.char_indicies[i])
			char_d        = rotated_map_d.rotate(-d)[0]
			@decrypted_message.push(char_d)
			i = i + 1
		end

		return @decrypted_message.join("")
	end
end

decryptor = Decryptor.new("")
puts decryptor.decrypt_message