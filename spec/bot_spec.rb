require_relative '../lib/evergreen_bot'

describe Evergreenbot do
  describe Hacks do
    let(:life) { Hacks.new }
    describe 'initialize' do
      it 'Makes the instance of Hack' do
        expect(life).to be_a Hacks
      end
      it 'it does not make the instace of motivation' do
        expect(life).not_to be_a Motivation
      end
      it 'It does not make instance of Programmer' do
        expect(life).not_to be_a Programmer
      end
      it 'It returns Lifehack motivation quotes' do
        expect(life.hack_quotes).to be_a String
      end
      it 'It doesnt not return Numerics' do
        expect(life.hack_quotes).not_to be_a Numeric
      end
    end
  end
  describe Motivation do
    let(:quotes) { Motivation.new }
    describe 'initialize' do
      it ' It makes the instance of Motivation' do
        expect(quotes).to be_a Motivation
      end
      it 'It does not make instance of Programmer' do
        expect(quotes).not_to be_a Programmer
      end
      it 'It does not make instance of Hacks' do
        expect(quotes).not_to be_a Hacks
      end
    end
    describe 'good_motivation' do
      it 'it returns good morning multivations' do
        expect(quotes.good_motivation).to be_a String
      end
      it 'it returns good morning motivation as string not numeric' do
        expect(quotes.good_motivation).not_to be_a Numeric
      end
    end
    describe Programmer do
      let(:sayings) { Programmer.new }
      describe 'initialize' do
        it 'It makes the instance of Programer' do
          expect(sayings).to be_a Programmer
        end
        it 'It does npt makes the instance of Motivation' do
          expect(sayings).not_to be_a Motivation
        end
        it 'It does not makes the instance of Hacks' do
          expect(sayings).not_to be_a Hacks
        end
      end
    end
  end
end
