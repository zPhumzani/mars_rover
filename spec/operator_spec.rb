RSpec.describe Operator do
  
  describe "#receive" do
    before :each do
      @rover = double("rover")
      @operator = Operator.new(@rover)
    end
    
    context "given input L" do
      let "turns the rover left" do       
        specify do
          expect(@rover).to receive(:turn_left)
          @operator.receive "L"
        end
      end
    end
    
    context "given input R" do
      let "turns the rover right" do
        specify do
          expect(@rover).to receive(:turn_right)
          @operator.receive "R"
        end
      end
    end
    
    context "given input M" do
      let "moves the rover" do
        specify do
          expect(@rover).to receive(:move)
          @operator.receive "M"
        end
      end
    end
  end
end
