class Offset
	attr_reader :date

	def initialize(date = "020315")
		@date = date
		if ARGV[2]
			@date = ARGV[2]
		else
			@date
		end
	end

	def square_date
		squared = date.to_i ** 2
		return squared.to_s.chars
	end

	def a_offset
		square_date[-4].to_i
	end

	def b_offset
		square_date[-3].to_i
	end

	def c_offset
		square_date[-2].to_i
	end

	def d_offset
		square_date[-1].to_i
	end
end
