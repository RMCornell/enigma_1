require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < MiniTest::Test
	def test_it_exists
		assert Encryptor.new("r")
	end

	def test_it_encrypts_a_letter
		encrypt = Encryptor.new("u")
		assert_equal "2", encrypt.encrypt_message
	end
end