require './lib/temp_converter.rb'
#require './lib/text_printer.rb'
require 'net/http'
require 'uri'
require 'rubygems'
require 'mqtt'
require 'json'


client = MQTT::Client.new
client.host = 'staging.thethingsnetwork.org'
client.port = '1883'
client.username = '70B3D57ED00012B2'
client.password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
client.connect
client.get('70B3D57ED00012B2/devices/000000007DD44BFC/up') do |topic,message|
puts tuid = JSON.parse(message)['fields']['temperature']
puts topic
tuid = tuid.to_f

temp = ARGV.first.to_f
url = 'http://labict.be/software-engineering/temperature/api/temperature/fake'
path = 'C:\Users\Gebruiker\Documents\School\systeem\Oefenigen\01 Temp converter\temperatuur.txt'

#TextPrinter.print_textje
TempConverter.commandline_temperature(tuid)
#TempConverter.url_temperature(tuid)
#TempConverter.file_temperature(path)

end
