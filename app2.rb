require 'temp_converter.rb'
require 'net/http'
require 'uri'
require 'rubygems'
require 'json'
require 'optparse'
require 'text_reader.rb'
require 'url_reader.rb'
require 'text_printer.rb'
require 'json_printer.rb'
require 'html_printer.rb'
require 'mqtt_reader.rb'

globalTemperature = 0
c = 0
path = 'C:\Users\Gebruiker\Documents\School\systeem\Oefenigen\01 Temp converter\temperatuur.txt'
link = 'http://labict.be/software-engineering/temperature/api/temperature/fake'


OptionParser.new do |opts|

  opts.banner = "Usage: ruby app.rb [options]"

opts. on("-h","--help", "dispay all opts") do
  puts opts
  exit
end

  #temperatuur uit file
  # opts.on("-file", "string file directory" ) do
  #   puts "this is the temperature from your file"
  #   c = TempConverter.get_file_temperature(path)
  #   f = TempConverter.calc_fahr(c)
  #   k = TempConverter.calc_kelvin(c)
  #
  #   #Tweede opts om de text te printen naar volgens de voorwaarde
  #   opts.on("--text", "temperature in plain text" ) do
  #     TextPrinter.print(c, f, k)
  #   end
  #   opts.on("--json", "temperature in JSON-string" ) do
  #     JsonPrinter.print(c, f, k)
  #   end
  #   opts.on("--html", "temperature in html format" ) do
  #     HtmlPrinter.print(c, f, k)
  #   end
  # end

  #temperatuur uit URL
  # opts.on("-url", "link to temperature") do
  #   puts "temperature from link"
  #   c = UrlReader.open_url(link)
  #   puts "test voor c"
  #   f = TempConverter.calc_fahr(c)
  #   k = TempConverter.calc_kelvin(c)
  #
  #   #Tweede opts om de text te printen naar volgens de voorwaarde
  #   opts.on("--text", "temperature in plain text" ) do
  #     TextPrinter.print(c, f, k)
  #   end
  #   opts.on("--json", "temperature in JSON-string" ) do
  #     JsonPrinter.print(c, f, k)
  #   end
  #   opts.on("--html", "temperature in html format" ) do
  #     HtmlPrinter.print(c, f, k)
  #   end
  # end

  #temperatuur uit cmd
  opts.on("-c", String, "enter your temperature") do |temperature|

    puts "temperature from command window"
    puts temperature
    c = temperature.to_f
    k = 10
    f = TempConverter.calc_fahr(k)
    k = TempConverter.calc_kelvin(k)

    #Tweede opts om de text te printen naar volgens de voorwaarde
    opts.on("--text", "temperature in plain text" ) do
      TextPrinter.print(c, f, k)
    end
    opts.on("--json", "temperature in JSON-string" ) do
      JsonPrinter.print(c, f, k)
    end
    opts.on("--html", "temperature in html format" ) do
      HtmlPrinter.print(c, f, k)
    end
  end

  #temperatuur uit qtmt

  # opts.on("-m","--mqtt", "temperature van mqtt") do
  #
  #   # client.host = 'staging.thethingsnetwork.org'
  #   # client.port = '1883'
  #   # client.username = '70B3D57ED00012B2'
  #   # client.password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
  #   # client.connect
  #   # c = 0
  #   # topic, message=client.get('70B3D57ED00012B2/devices/00000000AE6C63E4/up')
  #   #
  #   # puts mqtttemperature = JSON.parse(message)['fields']['temperature']
  #   mqtttemperature = MqttReader.read()
  #
  #   c = mqtttemperature.to_f
  #
  #     f = TempConverter.calc_fahr(c)
  #     k = TempConverter.calc_kelvin(c)
  #
  #     #Tweede opts om de text te printen naar volgens de voorwaarde
  #     opts.on("--text", "temperature in plain text" ) do
  #       TextPrinter.print(c, f, k)
  #     end
  #     opts.on("--json", "temperature in JSON-string" ) do
  #       JsonPrinter.print(c, f, k)
  #     end
  #     opts.on("--html", "temperature in html format" ) do
  #       HtmlPrinter.print(c, f, k)
  #     end
  # end



end.parse!
