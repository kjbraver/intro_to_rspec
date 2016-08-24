class Timer

	attr_reader :seconds
	
	def initialize
		@seconds = 0
	end

  def seconds=(seconds)
  	@seconds = seconds
  end

  def time_string
  	#converts seconds into its hour/minute/second parts 
  	#i.e. 4000 seconds => 1 hour, 6 minutes, 40 seconds 
  	@minutes = @seconds/60
  	@hours = @minutes/60
  	@minutes = @minutes % 60
  	@seconds = @seconds % 60

  	#converts data into proper padded number format for display
  	@seconds = padded(@seconds)
  	@minutes = padded(@minutes)
  	@hours = padded(@hours)

  	#joins string and adds more formatting
  	return "#{@hours}:#{@minutes}:#{@seconds}"
  end

  def padded(number)
  	return number.to_s.prepend("0") if(number >= 0 && number < 10)
  	return number.to_s
  end
end
