require_relative "location"
require_relative 'InterfaceApi'

class Weather<InterfaceApi
	attr_accessor :weather

	def initialize(location)
		@weather=""
		@loc=location
		@data_hash3={}
		
	end

	def getApi()
		begin
		url3="http://api.openweathermap.org/data/2.5/weather?q=" +@loc.getApi+ "&appid=2de143494c0b295cca9337e1e96b00e0"
		@weather = Net::HTTP.get(URI(url3))
		@data_hash3 = JSON.parse(@weather)
		puts "Weather is : " + @data_hash3["weather"].to_s
		@data_hash3["weather"].to_s
	rescue
		puts "Weather is : SUNNY!"
	end
	end
end 

