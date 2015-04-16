require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'

class RotorTest < MiniTest::Test
	def test_it_exists

		assert Rotor.new
	end

	def test_it_parses_four_character_string
		rotor = Rotor.new("ruby")
		assert_equal [17, 20, 1, 24], rotor.parse_message
	end

	def test_it_parses_five_character_string
		rotor = Rotor.new("rubyr")
		assert_equal [17, 20, 1, 24, 17], rotor.parse_message
	end

	def test_it_parses_eight_character_string
		rotor = Rotor.new("rubytest")
		assert_equal [17, 20, 1, 24, 19, 4, 18, 19], rotor.parse_message
	end

	def test_it_parses_space_character
		rotor = Rotor.new("ruby ")
		assert_equal [17, 20, 1, 24, 36], rotor.parse_message
	end

end