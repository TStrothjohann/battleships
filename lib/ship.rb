class Ship

	attr_reader :floating, :length
	DEFAULT_LENGTH = 1

	def initialize (length=1)
		@floating = true
		@length = length || DEFAULT_LENGTH
	end

	def floating?
		@floating
	end

	def hit_count
		0
	end

end