require 'counter'

describe Counter do
  describe '#new' do
    it 'starts with a count of 0' do
      counter = Counter.new
      expect(counter.count).to eq 0
    end
  end

  describe '#increment' do
    it 'adds 1 to the count' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
    end
  end

  describe '#decrement' do
    it 'takes 1 away from the count' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
      counter.decrement
      expect(counter.count).to eq 0
    end
  end

  describe '#reset' do
    it 'it resets the count back to 0' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
      counter.increment
      expect(counter.count).to eq 2
      counter.increment
      expect(counter.count).to eq 3
      counter.reset
      expect(counter.count).to eq 0
    end
  end
end