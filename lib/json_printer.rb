class JsonPrinter
def self.print(celsius, fahrenheit, kelvin)
  puts "{celsius: #{celsius} °C, fahrenheit: #{fahrenheit} °F, kelvin: #{kelvin} °K}"
end
end
