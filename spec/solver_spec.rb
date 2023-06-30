require_relative '../solver'

describe Solver do
  context 'Tests for fizzbuzz' do
    fizz_buzz_obj = Solver.new

    it 'should return fizz because 9 is divisible by 3' do
      expect(fizz_buzz_obj.fizzbuzz(9)).to eq('fizz')
    end

    it 'should return buzz because 10 is divisible by 5' do
      expect(fizz_buzz_obj.fizzbuzz(10)).to eq('buzz')
    end

    it 'should return the fizzbuzz because 15 is divisible by both 3 & 5' do
      expect(fizz_buzz_obj.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return 11 as a string since it\'s divisible by neither 3 nor 5' do
      expect(fizz_buzz_obj.fizzbuzz(17)).to eq('17')
    end
  end

  context 'Tests for factorial' do
    fact_obj = Solver.new

    it('factorial of 5 should equal 120') do
      expect(fact_obj.find(5)).to eq(120)
    end

    it('factorial of 0 should equal 1') do
      expect(fact_obj.find(0)).to eq(1)
    end

    it('factorial of a negative number should return an error') do
      expect { fact_obj.find(-1) }.to raise_error(ArgumentError, 'Argument must be greater than or equal to 0.')
    end
  end

  context 'Tests for reverse string' do
    rev_str_obj = Solver.new

    it('should reverse hello to olleh') do
      expect(rev_str_obj.reverse('hello')).to eq('olleh')
    end

    it('should reverse abel to leba') do
      expect(rev_str_obj.reverse('abel')).to eq('leba')
    end
  end
end
