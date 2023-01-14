handle = File.open(message.txt, "r")

incoming_text = handle.read

handle.close

puts incoming_text