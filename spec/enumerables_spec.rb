require_relative '../script.rb'

describe Enumerable do
  int_arr = [1, 3, 5]
  range_arr = (1..6)
  string_arr = ['This', 'is', 'a string', 'array']

  it 'returns each item in a array' do
    expect(string_arr.my_each {|x| x}).to eql(string_arr.each {|x| x})
  end
  
  it 'returns each item in a array' do
    expect(string_arr.my_each {|x| x}).to eql(string_arr.each {|x| x})
  end

  it 'returns each item in a array' do
    expect(string_arr.my_each {|x| x}).to eql(string_arr.each {|x| x})
  end

  #my_each_with_index
  it 'returns each item with index in a array' do
    expectation = int_arr.my_each_with_index { |k, v| v}
    index = 0
    actual = int_arr.each do
      index
      index += 1
    end
    expect(expectation).to eql(actual)
  end
end