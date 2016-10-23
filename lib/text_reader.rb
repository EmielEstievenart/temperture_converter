class TextReader
def initialize
end


  def self.open_file(file_name)

    File.open(file_name, "r") do |f|
    f.each_line do |line|
      return line.to_f
      end
    end
  end



end
