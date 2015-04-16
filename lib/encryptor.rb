require_relative 'parse'
require_relative 'rotor'

class Encryptor
	attr_reader :message,
							:parse,
							:char_map,
							:key,					#key value for CLI output
							:offset,			#date value for CLI output
							:rotor,
							:a, 					#rotation value char a from RotorClass
							:b,						#rotation value char b from RotorClass
							:c,						#rotation value char c from RotorClass
							:d						#rotation value char d from RotorClass

	def initialize(message)
		@message = message
		@parse = Parse.new(message)
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
		@key = Key.new
		@offset = Offset.new

		@a = Rotor.new.a_rotation
		@b = Rotor.new.b_rotation
		@c = Rotor.new.c_rotation
		@d = Rotor.new.d_rotation

		@encrypted_message = []
	end

	def encrypt_message
		i = 0
		count = (@parse.message.length) / 4
		count.times do

		rotated_map_a = char_map.rotate(parse.char_indicies[i])
		char_a = rotated_map_a.rotate(a)[0]
			@encrypted_message.push(char_a)
			i = i + 1

		rotated_map_b = char_map.rotate(parse.char_indicies[i])
		char_b = rotated_map_b.rotate(b)[0]
		@encrypted_message.push(char_b)
		i = i + 1

		rotated_map_c = char_map.rotate(parse.char_indicies[i])
		char_c = rotated_map_c.rotate(c)[0]
		@encrypted_message.push(char_c)
		i = i + 1
		#
		rotated_map_d = char_map.rotate(parse.char_indicies[i])
		char_d        = rotated_map_d.rotate(d)[0]
		@encrypted_message.push(char_d)
		i = i + 1
		end

		puts "Created 'encrypted.txt' with key of #{key.key} and date of #{offset.date}"
		encrypted_file = File.open(ARGV[1], "w")
		encrypted_file << @encrypted_message.join("")
		encrypted_file.close
	end
end

encryptor = Encryptor.new("")
puts encryptor.encrypt_message