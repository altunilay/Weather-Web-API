require_relative "Ip"
require_relative "Location"
require_relative "Weather"
require_relative 'InterfaceApi'

myWeather=Weather.new(Location.new(Ip.new()))
myWeather.getApi();
