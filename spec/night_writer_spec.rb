require './lib/night_writer'
require_relative 'spec_helper'

RSpec.describe NightWriter do
  it exists do
    night_writer = NightWriter.new
    night_writer.read_file = './message.txt'
    night_writer.write_file = './braille.txt'

    expect(night_writer).to be_a(NightWriter)
  end
end