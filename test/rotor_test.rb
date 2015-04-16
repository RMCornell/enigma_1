require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotor'

class RotorTest < MiniTest::Test
	def test_it_exists
		assert Rotor.new
	end

	def test_it_locates_a_rotation
		rotor = Rotor.new
		assert_equal 50, rotor.a_rotation
	end

	def test_it_locates_b_rotation
		rotor = Rotor.new
		assert_equal 17, rotor.b_rotation
	end

	def test_it_locates_c_rotation
		rotor = Rotor.new
		assert_equal 54, rotor.c_rotation
	end

	def test_it_locates_d_rotation
		rotor = Rotor.new
		assert_equal 26, rotor.d_rotation
	end

end
