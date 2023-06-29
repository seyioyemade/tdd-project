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
end
