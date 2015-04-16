require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < MiniTest::Test
	def test_it_exists
		assert Offset.new
	end

	def test_it_has_a_default_date
		offset = Offset.new
		assert offset
	end

	def test_it_squares_date
		offset = Offset.new
		assert ["4", "1", "2", "6", "9", "9", "2", "2", "5"], offset.square_date
	end

	def test_it_locates_a_offset
		offset = Offset.new
		assert 9, offset.a_offset
	end

	def test_it_locates_b_offset
		offset = Offset.new
		assert 2, offset.b_offset
	end

	def test_it_locates_c_offset
		offset = Offset.new
		assert 2, offset.c_offset
	end

	def test_it_locates_d_offset
		offset = Offset.new
		assert 5, offset.d_offset
	end
end