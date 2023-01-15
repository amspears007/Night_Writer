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

    night_writer.call
    expect(night_writer.read_file).to eq('./message.txt')
    expect(night_writer.write_file).to eq('./braille.txt')
  end

  it 'has a dictionary that can translate english to braille' do
    expected = {
      
    }
  end
end