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

  it 'returns each item with index in a array' do
    expectation = range_arr.my_each_with_index { |k, v| v}
    index = 0
    actual = range_arr.each do
      index
      index += 1
    end
    expect(expectation).to eql(actual)
  end

  it 'returns each item with index in a array' do
    expectation = string_arr.my_each_with_index { |k, v| v}
    index = 0
    actual = string_arr.each do
      index
      index += 1
    end
    expect(expectation).to eql(actual)
  end

  it 'returns a selected item in an array ' do
    expectation = range_arr.select {|x| x > 2 }
    expect(expectation) .to eql([3,4,5,6])
  end

  it 'returns a selected item in an array ' do
    expectation = int_arr.select {|x| x > 4 }
    expect(expectation) .to eql([5])
  end 

  it 'returns a selected item in an array ' do
    expectation = string_arr.select {|x| x.length > 4 }
    expect(expectation) .to eql(['a string', 'array'])
  end 

  # my_all method test
  it 'returns true if all item in an array meets given conditions ' do
    expectation = int_arr.my_all? {|x| x >= 1 }
    expect(expectation) .to eql(true)
  end

  it 'returns true if all item in an array meets given conditions ' do      
    expectation = range_arr.my_all? {|x| x > 1 }
    expect(expectation) .to eql(false)  
  end

  it 'returns true if all item in an array meets given conditions ' do
    expectation = string_arr.my_all? {|x| x.length >= 1 }
    expect(expectation) .to eql(true)    
  end

  # my_any?
  it 'returns true if any of items in an array meets given conditions ' do
    expectation = int_arr.my_any? {|x| x >= 5 }
    expect(expectation) .to eql(true)
  end

  it 'returns true if any of items in an array meets given conditions ' do
    expectation = range_arr.my_any? {|x| x <= 5 }
    expect(expectation) .to eql(true)
  end

  it 'returns true if any of items in an array meets given conditions ' do
    expectation = string_arr.my_any? {|x| x.include?("a string") }
    expect(expectation) .to eql(true)
  end

  # my_none?
  it 'returns true if none of items in an array meets given conditions ' do
    expectation = int_arr.my_none? {|x| x > 5 }
    expect(expectation) .to eql(true)
  end

  it 'returns true if none of items in an array meets given conditions ' do
    expectation = range_arr.my_none? {|x| x <= 5 }
    expect(expectation) .to eql(false)
  end

  it 'returns true if none of items in an array meets given conditions ' do
    expectation = string_arr.my_none? {|x| x.length > 50 }
    expect(expectation) .to eql(true)
  end
  #my_count

it 'returns number of elements in an array meeting a given condition ' do
    expectation = int_arr.my_count {|x| x > 2 }
    expect(expectation) .to eql(2)
  end

  it 'returns number of elements in an array meeting a given condition ' do
    expectation = range_arr.my_count {|x| x > 3 }
    expect(expectation) .to eql(3)
  end

  it 'returns number of elements in an array meeting a given condition ' do
    expectation = string_arr.my_count {|x| x.length > 2 }
    expect(expectation) .to eql(3)
  end

  #my_map
  
  it 'returns elements in array in a modified form after the condition passed in the block ' do
    expectation = int_arr.my_map {|x| x ** 2 }
    expect(expectation) .to eql([1,9,25])
  end

  it 'returns elements in array in a modified form after the condition passed in the block' do
    expectation = range_arr.my_map {|x|  x ** 2  }
    expect(expectation) .to eql([ 1,4,9,16,25,36])
  end

  it 'returns elements in array in a modified form after the condition passed in the block ' do
    expectation = string_arr.my_map {|x| x + ' and'}
    expect(expectation) .to eql(string_arr.map {|x| x + ' and'  } )
  end

end