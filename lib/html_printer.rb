class HtmlPrinter
def self.print(celsius, fahrenheit, kelvin)
  puts "<div>"
  puts "  <div>#{celsius} °C</div>"
  puts "  <div>#{fahrenheit} °F</div>"
  puts "  <div>#{kelvin} °K</div>"
  puts "</div>"
end
end
