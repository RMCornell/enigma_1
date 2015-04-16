require 'minitest/autorun'
require 'minitest/pride'
require './lib/parse'

# class ParseTest < MiniTest::Test
# 	def test_it_exists
# 		assert Parse.new("rubytest")
# 	end
#
# 	def test_it_downcases_and_splits_message
# 		parse = Parse.new("RubyTest")
# 		assert_equal "rubytest" , parse.message
# 	end
#
# 	def test_it_finds_indicies_of_parsed_message
# 		parse = Parse.new("RubyTest")
# 		assert_equal [17, 20, 1, 24, 19, 4, 18, 19], parse.char_indicies
# 	end
#
# end