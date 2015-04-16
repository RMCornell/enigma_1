

class Parse
	attr_reader :message, :map, :manipulation
	def initialize(message)
		@map = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
		@message = message
		@manipulation = []

	end

	def message
		file     = File.open(ARGV[0])
		contents = file.read.chomp
		# contents = "ruby"
		message = contents.downcase
	end

	def char_indicies
		message.chars.each_slice(4).each do |slice|
			slice.map do |letter|
				manipulation.push(map.index(letter))
			end
		end

		return manipulation
	end
end



if ARGV[0].nil?
	contents = "rubytest"
else
	contents = File.open(ARGV[0], "r")
end
