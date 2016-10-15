class TempConverter



  def self.to_text(celsius, fahrenheit, kelvin)
    puts "Temperatuur: "
    puts "#{celsius} °C"
    puts  "#{fahrenheit} °F"
    puts "#{kelvin} °K"
  end

  def self.to_json(celsius, fahrenheit, kelvin)
    puts "{celsius: #{celsius} °C, fahrenheit: #{fahrenheit} °F, kelvin: #{kelvin} °K}"
  end

  def self.to_html(celsius, fahrenheit, kelvin)
    puts "<div>"
    puts "  <div>#{celsius} °C</div>"
    puts "  <div>#{fahrenheit} °F</div>"
    puts "  <div>#{kelvin} °K</div>"
    puts "</div>"
  end

  def self.to_print_all(c, f, k)
   to_text(c, f, k)
   to_json(c, f, k)
   to_html(c, f, k)
  end

def self.calc_kelvin(t)
  return (t + 273.15)
end



def self.calc_fahr(t)
return ((t*9/5)+32)
end


  def self.commandline_temperature(temp)
    puts "Temperatuur uit powershell"
kelvin = calc_kelvin(temp)
fahr = calc_fahr(temp)

  to_print_all(temp, fahr, kelvin)
  end
  def self.url_temperature(link)
    puts "Temperatuur uit url"


    def self.open(url)
      Net::HTTP.get(URI.parse(url))
    end

    page_content = open(link)
    temp = page_content
    temp = temp.to_f

    kelvin = calc_kelvin(temp)
    fahr = calc_fahr(temp)

to_print_all(temp, fahr, kelvin)

end

def self.open_file(file_name)

  File.open(file_name, "r") do |f|
  f.each_line do |line|
    return line.to_f
    end
  end
end

    def self.file_temperature(file_name)
      puts "Temperatuur uit textdocument"
      temp = open_file(file_name)
        kelvin = calc_kelvin(temp)
        fahr = calc_fahr(temp)

        to_print_all(temp, fahr, kelvin)
    end


end
