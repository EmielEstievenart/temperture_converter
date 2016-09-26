require './lib/temp_converter.rb'
require 'net/http'
require 'uri'




temp_converter = TempConverter.new

puts temp_converter.commandline_temperature(ARGV.first.to_f)
puts temp_converter.url_temperature('http://labict.be/software-engineering/temperature/api/temperature/fake')
puts temp_converter.file_temperature('C:\Users\Gebruiker\Documents\School\systeem\Oefenigen\01 Temp converter\temperatuur.txt')
