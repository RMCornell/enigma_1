require_relative 'offset'
require_relative 'key'

class Rotor
	attr_reader :offset, :key
	def initialize
		@offset = Offset.new
		@key = Key.new
	end

	def a_rotation
		offset.a_offset + key.a_key
	end

	def b_rotation
		offset.b_offset + key.b_key
	end

	def c_rotation
		offset.c_offset + key.c_key
	end

	def d_rotation
		offset.d_offset + key.d_key
	end
end