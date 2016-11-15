require './lib/temp_converter.rb'
require 'net/http'
require 'uri'
require 'rubygems'
require 'mqtt'
require 'json'
require 'optparse'
require './lib/text_reader.rb'
require './lib/url_reader.rb'
require './lib/text_printer.rb'
require './lib/json_printer.rb'
require './lib/html_printer.rb'

globalTemperature = 0
path = 'C:\Users\Gebruiker\Documents\School\systeem\Oefenigen\01 Temp converter\temperatuur.txt'
link = 'http://labict.be/software-engineering/temperature/api/temperature/fake'


OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"
  #temperatuur uit file
  opts.on("-file", "string file directory" ) do
    puts "this is the temperature from your file"
    c = TempConverter.get_file_temperature(path)
    f = TempConverter.calc_fahr(c)
    k = TempConverter.calc_kelvin(c)
    #Tweede opts om de text te printen naar volgens de voorwaarde
    opts.on("-Text", "enter your file directory" ) do
      TextPrinter.print(c, f, k)
    end
    opts.on("-Json", "enter your file directory" ) do
      JsonPrinter.print(c, f, k)
    end
    opts.on("-Html", "enter your file directory" ) do
      HtmlPrinter.print(c, f, k)
    end
  end 

  #temperatuur uit URL
  opts.on("-url", "link to temperature") do
    puts "temperature from link"
    c = UrlReader.open_url(link)
    f = TempConverter.calc_fahr(c)
    k = TempConverter.calc_kelvin(c)
    #Tweede opts om de text te printen naar volgens de voorwaarde
    opts.on("-Text", "enter your file directory" ) do
      TextPrinter.print(c, f, k)
    end
    opts.on("-Json", "enter your file directory" ) do
      JsonPrinter.print(c, f, k)
    end
    opts.on("-Html", "enter your file directory" ) do
      HtmlPrinter.print(c, f, k)
    end
  end

  #temperatuur uit cmd
  opts.on("-t", "--string temperature", String, "enter your temperature") do |temperature|

    puts "temperature from command window"
    c = temperature.to_f
    f = TempConverter.calc_fahr(c)
    k = TempConverter.calc_kelvin(c)
    #Tweede opts om de text te printen naar volgens de voorwaarde
    opts.on("-Text", "enter your file directory" ) do
      TextPrinter.print(c, f, k)
    end
    opts.on("-Json", "enter your file directory" ) do
      JsonPrinter.print(c, f, k)
    end
    opts.on("-Html", "enter your file directory" ) do
      HtmlPrinter.print(c, f, k)
    end
  end
end.parse!
