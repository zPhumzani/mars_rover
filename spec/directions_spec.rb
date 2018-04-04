RSpec.describe Directions do
  describe "#go" do
    it "returns NORTH when given N" do
      expect(Directions::go("N")).to eq(Directions::NORTH)
    end
    
    it "returns SOUTH when given S" do
      expect(Directions::go("S")).to eq(Directions::SOUTH)
    end
    
    it "returns EAST when given E" do
      expect(Directions::go("E")).to eq(Directions::EAST)
    end
    
    it "returns WEST when given W" do
      expect(Directions::go("W")).to eq(Directions::WEST)
    end
    
    it "returns nil when given any other value" do
      expect(Directions::go("")).to eq nil
    end
  end
end