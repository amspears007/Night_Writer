require_relative 'spec_helper'

RSpec.describe Translator do
  it 'exists' do
    translate = Translator.new

    expect(translate).to be_a(Translator)
  end
end