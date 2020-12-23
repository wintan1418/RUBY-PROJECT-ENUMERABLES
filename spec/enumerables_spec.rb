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

  # it 'returns each item with index in a array' do
    
  #   actual = int_arr.my_each_with_index do |x|

  #   end
  #   expect().to eql(int_arr.each {|x|})
  # end
end