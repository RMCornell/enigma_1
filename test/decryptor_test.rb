require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'

class DecryptorTest < MiniTest::Test
	def test_it_exists
		assert Decryptor.new
	end

end