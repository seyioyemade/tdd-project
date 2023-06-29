require_relative '../solver'

describe Solver do
  describe '#factorial' do
    context 'with a non-negative integer' do
      it 'returns the correct factorial' do
        expect(subject.factorial(0)).to eq(1)
        expect(subject.factorial(5)).to eq(120)
      end
    end

    context 'with a negative integer' do
      it 'raises an exception' do
        expect { subject.factorial(-5) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
      end
    end
  end

  describe '#reverse' do
    context 'takes one argument, a string word' do
      it 'returns the reverse' do
        expect(subject.reverse('seyi')).to eq('iyes')
      end
    end
  end

  describe '#fizzbuzz' do
    subject { described_class.new }

    it 'returns the right string' do
      expect(subject.fizzbuzz(4)).to eql '12fizz4'
      expect(subject.fizzbuzz(10)).to eql '12fizz4buzzfizz78fizzbuzz'
    end
  end
end
