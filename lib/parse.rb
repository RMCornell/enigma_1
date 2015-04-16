require_relative 'char_map'

class Parse
	attr_reader :message, :map, :manipulation
	def initialize(message)
		@map = CharMap.new
		@message = message
		@manipulation = []
		if ARGV[0] == nil
			@message = message.chomp.downcase
		else
			@message = ARGV[0]
		end
	end

	def message
		file     = File.open(ARGV[0])
		contents = file.read.chomp
		@message = contents.downcase.split("")
	end

	def char_indicies
		message.each_slice(4).each do |slice|
			slice.map do |letter|
				manipulation.push(map.char_map.index(letter))
			end
		end

		return manipulation
	end
end

# contents = File.open(ARGV[0], "r")
contents = "rubytest"

parse = Parse.new(contents)
puts parse.char_indicies.join("")
