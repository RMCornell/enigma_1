require_relative 'char_map'

class Parse
	attr_reader :message, :map, :manipulation
	def initialize(message)
		@map = CharMap.new
		@message = message
		@manipulation = []

	end

	def message
		# file     = File.open(ARGV[0])
		# contents = file.read.chomp
		contents = "testrubytestruby"
		message = contents.downcase
	end

	def char_indicies
		message.chars.each_slice(4).each do |slice|
			slice.map do |letter|
				manipulation.push(map.char_map.index(letter))
			end
		end

		return manipulation
	end
end

# if ARGV[0].nil?
# 	contents = "rubytest"
# else
# 	contents = File.open(ARGV[0], "r")
# end
#
# parse = Parse.new(contents)
# puts parse.char_indicies.join("")
