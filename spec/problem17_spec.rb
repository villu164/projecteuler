# https://rubyplus.com/articles/1881-Sinatra-Beyond-Basics-TDD-using-Sinatra
require 'spec_helper'
require_relative '../problem17'

RSpec.describe '#number_to_string' do
  it 'converts correctly' do
    expect(number_to_string(1)).to eq('one')
    expect(number_to_string(2)).to eq('two')
    expect(number_to_string(21)).to eq('twenty one')
  end
end
