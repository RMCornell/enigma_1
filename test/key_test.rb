require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < MiniTest::Test
	def test_it_exists
		assert Key.new
	end

	def test_it_has_a_default_key
		key = Key.new
		assert key
	end

	def test_it_generates_random_key
		key = Key.new
		assert key.random_key != key
	end

	def test_it_locates_a_rotation
		key = Key.new
		assert_equal 41, key.a_key
	end

	def test_it_locates_b_rotation
		key = Key.new
		assert_equal 15, key.b_key
	end

	def test_it_locates_c_rotation
		key = Key.new
		assert_equal 52, key.c_key
	end

	def test_it_locates_d_rotation
		key = Key.new
		assert_equal 21, key.d_key
	end



end