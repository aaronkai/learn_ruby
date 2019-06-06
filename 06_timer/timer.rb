class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	def padded(number)
		if number.to_s.length == 1
			number = "0" + number.to_s
		end
		number.to_s
	end
	
	def time_string
		leftover_seconds = padded(@seconds % 3600 % 60)
		minutes = padded((@seconds % 3600) / 60)
		hours = padded(@seconds / 3600)
		hours+":"+minutes+":"+leftover_seconds
	end

	
end
