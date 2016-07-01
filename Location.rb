
require_relative "Ip"
require_relative 'InterfaceApi'

class Location<InterfaceApi
	attr_accessor :location

	def initialize(ip)

		@location=""
		@ip=ip
		@data_hash2={}

	end

	def getApi()
		begin
		url2="http://ip-api.com/json/" + @ip.getApi()
		@location = Net::HTTP.get(URI(url2))
		@data_hash2 = JSON.parse(@location)
		puts "My location is: " + @data_hash2["city"] +", " + @data_hash2["regionName"]
		@data_hash2["city"] 
	rescue
		puts "My location is: California" 
	end

	end
end 

