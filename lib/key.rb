class Key
	attr_reader :key

	def initialize(key = "41521")
		@key = key
		if ARGV[3]
			@key = ARGV[3]
		else
			@key
		end
	end

	def random_key
		@key = rand(0..99999)
	end

	def a_key
		@key.chars
		(@key[0] + @key[1]).to_i
	end

	def b_key
		@key.chars
		(@key[1] + @key[2]).to_i
	end

	def c_key
		@key.chars
		(@key[2] + @key[3]).to_i
	end

	def d_key
		@key.chars
		(@key[3] + @key[4]).to_i
	end
end