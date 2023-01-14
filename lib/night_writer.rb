class NightWriter
  attr_accessor :read_file, :write_file
  
  def initialize
    @read_file = ARGV[0]
    @write_file = ARGV[1]
  end

  def call_read_to_write
    #a start method
    message_file = File.open(@read_file, "r")
    return_file = File.new(@write_file, "w")

    char_count = message_file.chars.count

    puts "Created #{ARGV[1]} contains #{char_count} characters"

    return_file.write(message_file.read)
    return_file.close
  end
end


# #Acts a runner file outside of class
# night_writer = NightWriter.new
# night_writer.call

#start method this new_method to translate to braille

# handle = File.open(message.txt, "r")

# incoming_text = handle.read

# handle.close

# puts incoming_text