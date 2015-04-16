require_relative 'parse'
require_relative 'rotor'

class Decryptor
	attr_reader :message,
							:char_map,
							:parse,
							:offset,
							:key,
							:rotor,
							:a, 				#rotation value char a from RotorClass
							:b, 				#rotation value char a from RotorClass
							:c, 				#rotation value char a from RotorClass
							:d 					#rotation value char a from RotorClass


	def initialize(message)
		@message = message
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
		@parse = Parse.new(message)
		@offset = Offset.new
		@key = Key.new

		@a = Rotor.new.a_rotation
		@b = Rotor.new.b_rotation
		@c = Rotor.new.c_rotation
		@d = Rotor.new.d_rotation

		@decrypted_message = []
	end

	def decrypt_message
		i  = 0
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

		puts "Created 'decrypted.txt with key of #{key.key} and date of #{@offset.date}"
		decrypted_file = File.open(ARGV[1], "w")
		decrypted_file << @decrypted_message.join("")
		decrypted_file.close
	end
end

decryptor = Decryptor.new("")
puts decryptor.decrypt_message

