require './lib/Calc'

describe Calc do
  x = 12; y = 15
  describe '#add' do
    it { expect(subject).to respond_to(:add) }
    it { expect(subject.add([x, y])).to eq(x + y) }
    it 'can add more than two numbers correctly' do
      input = []
      5.times do |_|
        r = rand(50)
        input.push(r)
      end
      expect(subject.add(input)).to eq(input.inject(:+))
    end
  end
  describe '#subtract' do
    it { expect(subject).to respond_to(:subtract) }
    it { expect(subject.subtract([x, y])).to eq(x - y) }
  end
  describe '#divide' do
    it { expect(subject).to respond_to(:divide) }
    it { expect(subject.divide([x, y])).to eq(x / y) }
  end
  describe '#multiply' do
    it { expect(subject).to respond_to(:multiply) }
    it { expect(subject.multiply([x, y])).to eq(x * y) }
  end
  describe '#pretty_print' do
    it { expect(subject).to respond_to(:total) }
    it { expect(subject).to respond_to(:pretty_print) }
  end
  describe 'combined operations' do
    it 'can add two numbers and multiply by another' do
      z = subject.add([x, y])
      z = subject.multiply([z, 25])
      expect(z).to eq((x + y) * 25)
    end
  end
end
