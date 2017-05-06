require "Game"

describe Game do
  subject(:game) { described_class.new }
  # it { is_expected.to respond_to(:allocateMarkerTo).with(1).argument }
  it "allocates a marker to a player" do
    expect(game).to respond_to(:allocateMarkerTo).with(1).argument
  end

  describe "#initialize" do
    context "when created" do
      it "initialises 2 players" do
        expect { game.player1 }.not_to raise_error
        expect { game.player2 }.not_to raise_error
      end
    end
  end

  describe "#play" do
    context "when the game starts" do
      it "Two players are assigned markers" do
        expect { game.play }.not_to raise_error
        expect { game.player1.marker.to be("X").or(eq("O"))}
        expect { game.player2.marker.to be("O").or(eq("X"))} 
      end
    end
  end



end
