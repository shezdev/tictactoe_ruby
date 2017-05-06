require "Player"

describe Player do
  subject(:player) { described_class.new }

  describe "#initialize" do
    context "when created" do
      it "has not chosen a marker yet" do
        expect { player.marker }.not_to raise_error
      end
      it "has not got a current_move yet" do
        expect { player.current_move }.not_to raise_error
      end
    end
  end


end
