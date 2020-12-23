require_relative '../script.rb'

describe Enumerable do
  int_arr = [1, 3, 5]
  range_arr = (1..6)
  string_arr = ['This', 'is', 'a string', 'array']

  describe 'my_each' do
    it 'returns each item in a integer array' do
      expect(string_arr.my_each { |x| x }).to eql(string_arr.each { |x| })
    end

    it 'returns each item in a range array' do
      expect(string_arr.my_each { |x| x }).to eql(string_arr.each { |x| })
    end

    it 'returns each item in a string array' do
      expect(string_arr.my_each { |x| x }).to eql(string_arr.each { |x| })
    end
  end

  # my_each_with_index
  describe 'my_each_with_index' do
    it 'returns each item with index in a integer array' do
      expectation = int_arr.my_each_with_index { |_k, v| v }
      index = 0
      actual = int_arr.each do
        index += 1
      end
      expect(expectation).to eql(actual)
    end

    it 'returns each item with index in a range array' do
      expectation = range_arr.my_each_with_index { |_k, v| v }
      index = 0
      actual = range_arr.each do
        index += 1
      end
      expect(expectation).to eql(actual)
    end

    it 'returns each item with index in a string array' do
      expectation = string_arr.my_each_with_index { |_k, v| v }
      index = 0
      actual = string_arr.each do
        index += 1
      end
      expect(expectation).to eql(actual)
    end
  end

  describe 'my_select' do
    it 'returns a selected item in an integer array if the condition is true ' do
      expectation = range_arr.select { |x| x > 2 }
      expect(expectation) .to eql([3, 4, 5, 6])
    end

    it 'returns a selected item in a range array if the condition is true ' do
      expectation = int_arr.select { |x| x > 4 }
      expect(expectation) .to eql([5])
    end

    it 'returns a selected item in a string array if the condition is true ' do
      expectation = string_arr.select { |x| x.length > 4 }
      expect(expectation) .to eql(['a string', 'array'])
    end
  end

  # my_all method test
  describe 'my_all?' do
    it 'returns true if all item in an intiger array meets given conditions ' do
      expectation = int_arr.my_all? { |x| x >= 1 }
      expect(expectation) .to eql(true)
    end

    it 'returns true if all item in a range array meets given conditions ' do
      expectation = range_arr.my_all? { |x| x > 1 }
      expect(expectation) .to eql(false)
    end

    it 'returns true if all item in a string array meets given conditions ' do
      expectation = string_arr.my_all? { |x| x.length >= 1 }
      expect(expectation) .to eql(true)
    end
  end

  # my_any?
  describe 'my_any?' do
    it 'returns true if any of items in an intiger array meets given conditions ' do
      expectation = int_arr.my_any? { |x| x >= 5 }
      expect(expectation) .to eql(true)
    end

    it 'returns true if any of items in a range array meets given conditions ' do
      expectation = range_arr.my_any? { |x| x <= 5 }
      expect(expectation) .to eql(true)
    end

    it 'returns true if any of items in a sting array meets given conditions ' do
      expectation = string_arr.my_any? { |x| x.include?('a string') }
      expect(expectation) .to eql(true)
    end
  end

  # my_none?
  describe 'my_none?' do
    it 'returns true if none of items in an integer array meets given conditions ' do
      expectation = int_arr.my_none? { |x| x > 5 }
      expect(expectation) .to eql(true)
    end

    it 'returns true if none of items in a range array meets given conditions ' do
      expectation = range_arr.my_none? { |x| x <= 5 }
      expect(expectation) .to eql(false)
    end

    it 'returns true if none of items in a string array meets given conditions ' do
      expectation = string_arr.my_none? { |x| x.length > 50 }
      expect(expectation) .to eql(true)
    end
  end

  # my_count
  describe 'my_count' do
    it 'returns number of elements in an integer array meeting a given condition ' do
      expectation = int_arr.my_count { |x| x > 2 }
      expect(expectation) .to eql(2)
    end

    it 'returns number of elements in a range array meeting a given condition ' do
      expectation = range_arr.my_count { |x| x > 3 }
      expect(expectation) .to eql(3)
    end

    it 'returns number of elements in a string array meeting a given condition ' do
      expectation = string_arr.my_count { |x| x.length > 2 }
      expect(expectation) .to eql(3)
    end
  end

  # my_map
  describe 'my_map' do
    it 'returns elements in an integer array in a modified form after the condition passed in the block ' do
      expectation = int_arr.my_map { |x| x**2 }
      expect(expectation) .to eql([1, 9, 25])
    end

    it 'returns elements in a range array in a modified form after the condition passed in the block' do
      expectation = range_arr.my_map { |x| x**2 }
      expect(expectation) .to eql([1, 4, 9, 16, 25, 36])
    end

    it 'returns elements in a string array in a modified form after the condition passed in the block ' do
      expectation = string_arr.my_map { |x| x + ' and' }
      expect(expectation) .to eql(string_arr.map { |x| x + ' and' })
    end
  end

  # my_inject
  describe 'my_inject' do
    it 'returns accumulated elements in an integer array ' do
      expectation = int_arr.my_inject(0) { |result, element| result + element }
      actual = int_arr.inject(0) { |result, element| result + element }
      expect(expectation) .to eql(actual)
    end

    it 'returns accumulated elements in a range array ' do
      expectation = range_arr.my_inject(1) { |result, element| result * element }
      actual = range_arr.inject(1) { |result, element| result * element }
      expect(expectation) .to eql(actual)
    end

    it 'returns accumulated elements in a string array ' do
      expectation = string_arr.my_inject('') { |result, element| result + element }
      actual = string_arr.inject('') { |result, element| result + element }
      expect(expectation) .to eql(actual)
    end
  end

  # multiply_els
  describe 'multiply_els' do
    it 'returns multiplied elements of an integer array ' do
      expectation = int_arr.my_inject(1) { |result, element| result * element }
      actual = int_arr.inject(1) { |result, element| result * element }
      expect(expectation) .to eql(actual)
    end

    it 'returns multiplied elements of a range array ' do
      expectation = range_arr.my_inject(1) { |result, element| result * element }
      actual = range_arr.inject(1) { |result, element| result * element }
      expect(expectation) .to eql(actual)
    end
  end
end
