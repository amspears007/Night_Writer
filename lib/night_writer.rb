class NightWriter
  attr_accessor :read_file, 
                :write_file,
                :braille_alphabet
  
  def initialize
    @read_file = ARGV[0]
    @write_file = ARGV[1]
    @braille_alphabet = {
      "a" => ["0.", "..", ".."],
      "b" => ["00", "..", ".."],
      "c" => ["0.", ".0", ".."],
      "d" => ["0.", ".0", "0."],
      "e" => ["0.", "..", "0."],
      "f" => ["00", ".0", ".."],
      "g" => ["00", ".0", "0."],
      "h" => ["00", "..", "0."],
      "i" => [".0", ".0", ".."],
      "j" => [".0", ".0", "0."],
      "k" => ["0.", "0.", ".."],
      "l" => ["00", "0.", ".."],
      "m" => ["0.", "00", ".."],
      "n" => ["0.", "00", "0."],
      "o" => ["0.", "0.", "0."],
      "p" => ["00", "00", ".."],
      "q" => ["00", "00", "0."],
      "r" => ["00", "0.", "0."],
      "s" => [".0", "00", ".."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "0.", ".0"],
      "v" => ["00", "0.", ".0"],
      "w" => [".0", ".0", "00"],
      "x" => ["0.", "00", ".0"],
      "y" => ["0.", "00", "00"],
      "z" => ["0.", "0.", "00"],
      " " => ["..", "..", ".."]
    }
  end

  def call_read_to_write
    message = File.read(@read_file)
   
    char_count = message.chars.count
    braille_output = word_to_braille(message)

    File.write(@write_file, braille_output)
    
    puts "Created #{ARGV[1]} contains #{char_count} characters"
  end

  def letter_to_braille(text)
    braille_arr = []
    text_array = text.split("")
    text_array.each do |letter|
      braille_arr << @braille_alphabet[letter].join("\n")
    end
    braille_arr.join
  end

  def word_to_braille(text)
    # braille_arr = []
    text_array = text.split("")
    braille_array = text_array.map do |letter|
       @braille_alphabet[letter]
    end
    #creates 3 arrays +["0.", "..", ".."]["00", "..", ".."]["0.", ".0", ".."]
    #want to eq "0.000.\n.....0\n......"
    #transpose makes rows into colums
    #[["0.", "..", ".."], ["00", "..", ".."], ["0.", ".0", ".."]] turns into
    #[["0.", "00", "0."], ["..", "..", ".0"], ["..", "..", ".."]]
    x = braille_array.transpose.map do |symbol|
      # require 'pry'; binding.pry
      symbol
      #.chars.map do |slice|
      #   slice.join
      # end
    end
     y = x.map do |line|
      # require 'pry'; binding.pry
      line.join
     end.join("\n")

  end
end


# #Acts a runner file outside of class
night_writer = NightWriter.new
night_writer.call_read_to_write
