require_relative './script.rb'

describe Enumerable do
  describe my_each do
    it 'returns each item in a array'
    enumerable = Enumerable.new
    expect(enumerable.my_each).to eql()
    end
  end
end
