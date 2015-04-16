class CharMap
	attr_reader :char_map
	def initialize
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
	end
end