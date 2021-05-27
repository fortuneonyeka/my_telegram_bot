require_relative'../lib/evergreen_bot'

    describe Evergreenbot do
      describe Hacks do
        let(:life) {Hacks.new}
        describe 'initialize' do
          it "Makes the instance of Hack" do
            expect(life).to be_a Hacks
          end
          it "it does not make the instace of motivation" do
            expect(life).not_to be_a Motivation
          end
          it "It does not make instance of Programmer" do
            expect(life).not_to be_a Programmer
          end
          it "It returns Lifehack motivation quotes" do
            expect(life.hack_quotes).to be_a String
          end
          it "It doesnt not return Numerics" do
            expect(life.hack_quotes).not_to be_a Numeric
          end
        end
      end
      
    end