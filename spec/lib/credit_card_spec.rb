require_relative '../../lib/credit_card'
describe CreditCard do
  describe '#balance' do
    it 'should return zero for new credit cards' do
      expect(subject.balance).to eq(0.0)
    end
  end

  describe '#charge(amount)' do
    it 'adds the amount to the current balance' do
      subject.charge(3.01)
      subject.charge(2.25)
      expect(subject.balance).to eq(5.26)
    end

    describe '#credit(amount)' do
      it 'subtract the amount from current balance' do
        subject.credit(3.25)
        expect(subject.balance).to eq(-3.25)
      end
    end
  end
end
