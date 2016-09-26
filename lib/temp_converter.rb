class TempConverter

  def to_text(celsius, fahrenheit, kelvin)
    puts "Temperatuur: "
    puts "#{celsius} °C"
    puts  "#{fahrenheit} °F"
    puts "#{kelvin} °K"
  end

  def to_json(celsius, fahrenheit, kelvin)
    puts "{celsius: #{celsius} °C, fahrenheit: #{fahrenheit} °F, kelvin: #{kelvin} °K}"
  end

  def to_html(celsius, fahrenheit, kelvin)
    puts "<div>"
    puts "  <div>#{celsius} °C</div>"
    puts "  <div>#{fahrenheit} °F</div>"
    puts "  <div>#{kelvin} °K</div>"
    puts "</div>"
  end

  def commandline_temperature(temp)

kelvin = (temp*9/5)+32
fahr = temp+273.15

  puts to_text(temp, fahr, kelvin)
  puts to_json(temp, fahr, kelvin)
  puts to_html(temp, fahr, kelvin)
  end
  def url_temperature(link)

    def open(url)
      Net::HTTP.get(URI.parse(url))
    end

    page_content = open(link)
    temp = page_content
    temp = temp.to_f

kelvin = (temp*9/5)+32
fahr = temp+273.15

puts to_text(temp, fahr, kelvin)
puts to_json(temp, fahr, kelvin)
puts to_html(temp, fahr, kelvin)

end

    def file_temperature(file_name)
      
      File.open(file_name, "r") do |f|
      f.each_line do |line|
        puts line
      end
    end

end
end
