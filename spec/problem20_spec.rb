# https://rubyplus.com/articles/1881-Sinatra-Beyond-Basics-TDD-using-Sinatra
require 'spec_helper'
require_relative '../problem20'

RSpec.describe '#method' do
  it 'sums digits in a number' do
    expect(sum_digits('123')).to eq(6)
    expect(sum_digits('0')).to eq(0)
    expect(sum_digits('31231')).to eq(10)
  end

  it 'calculates factorial' do
    expect(factorial(1)).to eq(1)
    expect(factorial(2)).to eq(2)
    expect(factorial(3)).to eq(6)
    expect(factorial(4)).to eq(24)
    expect(factorial(5)).to eq(120)
  end

  it 'does not die on factorial 100!' do
    expect(factorial(100)).not_to be_nil
  end
end
