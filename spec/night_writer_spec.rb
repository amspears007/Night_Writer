require_relative 'spec_helper'

RSpec.describe NightWriter do
  it 'exists' do
    night_writer = NightWriter.new
    night_writer.read_file = './message.txt'
    night_writer.write_file = './braille.txt'

    expect(night_writer).to be_a(NightWriter)
  end

  it 'has a file to read and a file to write' do
    night_writer = NightWriter.new
    night_writer.read_file = './message.txt'
    night_writer.write_file = './braille.txt'

    # night_writer.call_read_to_write
    expect(night_writer.read_file).to eq('./message.txt')
    expect(night_writer.write_file).to eq('./braille.txt')
  end

  it 'has an alphabet that can translate english to braille' do
    night_writer = NightWriter.new

    expected = {
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

    expect(night_writer.braille_alphabet).to eq(expected)
  end

    it 'can translate a single letter to braille' do
      night_writer = NightWriter.new
      night_writer.read_file = './message.txt'
      night_writer.write_file = './braille.txt'

      expect(night_writer.translate_to_braille("a")).to eq("0.\n..\n..")
      expect(night_writer.translate_to_braille("l")).to eq("00\n0.\n..")
      # expect(night_writer.translate_to_braille("a l")).to eq("0.\n..\n..\n..\n..\n..\n00\n0.\n..")
    end
  

    xit 'can translate words to braille' do
      expect(night_writer.translate_to_braille("amy")).to eq("0.0.0.\n..0000\n....00") 
    end
end