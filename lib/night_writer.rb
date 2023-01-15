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
    #a start method
    # message_text= File.read(@read_file)
    message_file = File.open(@read_file, "r")
    return_file = File.new(@write_file, "w")

    char_count = message_file.chars.count

    puts "Created #{ARGV[1]} contains #{char_count} characters"

    return_file.write(message_file.read)
    # return_file.close
  end

  def translate_to_braille(text)
    # require 'pry'; binding.pry
    braille_arr = []
    text_array = text.split("")
    text_array.each do |letter|
      braille_arr << @braille_alphabet[letter].join("\n")
    end
    braille_arr.join
  end
end


# #Acts a runner file outside of class
# night_writer = NightWriter.new
# night_writer.call_read_to_write

#start method this new_method to translate to braille

# handle = File.open(message.txt, "r")

# incoming_text = handle.read

# handle.close

# puts incoming_text