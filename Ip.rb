
require "net/http"
require "JSON"
require_relative 'InterfaceApi'

class Ip<InterfaceApi
	attr_accessor :ip

	def initialize()
		@ip=0
		@data_hash={}
		
	end

	def getApi()
		begin
		url="https://api.ipify.org?format=json"
		@ip = Net::HTTP.get(URI(url))
		@data_hash = JSON.parse(ip)
		puts "My public IP Address is: " + @data_hash["ip"]
		@data_hash["ip"]
	rescue
		puts "My public IP Address is: 208.80.152.201"
	end

	end

end









