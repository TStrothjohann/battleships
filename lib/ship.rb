class Ship

	attr_reader :floating, :length, :hit_count
	DEFAULT_LENGTH = 1

	def initialize (length=1)
		@floating = true
		@length = length || DEFAULT_LENGTH
		@hit_count = 0
	end

	def floating?
		@hit_count == @length ? @floating = false : @floating
	end

	def hit!
		@hit_count += 1
	end

end