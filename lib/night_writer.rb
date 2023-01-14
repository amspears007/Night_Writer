# class NightWriter
  # attr_accessor :read_file, :write_file
  
#   def initialize
#     @read_file = ARGV(0)
#     @write_file = ARGV(1)
#   end
# end

# def call

# end

# #Acts a runner file outside of class
# night_writer = NightWriter.new
# night_writer.call
#start method this new_method to translate to braille




message_file = File.open(ARGV(0), "r")
reuturn_file = File.new(ARGV[1], "w")

char_count = message_file.chars.count

puts "Created #{ARGV[1]} contains #{char_count} characters"

reuturn_file.write(message_file.read)
reuturn_file.close


# handle = File.open(message.txt, "r")

# incoming_text = handle.read

# handle.close

# puts incoming_text