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
      it "has an empty board with 9 fields" do
        expect { game.board }.not_to raise_error
        expect { game.board.to eq([["", "", ""], ["", "", ""], ["", "", ""]])}
      end
    end
  end

  describe "#play" do
    context "when the game starts" do
      it "assigns markers to two players" do
        expect { game.play }.not_to raise_error
        expect { game.player1.marker.to be("X").or(eq("O"))}
        expect { game.player2.marker.to be("O").or(eq("X"))}
      end
    end
  end

  describe "#request_move" do
    context "When the game starts" do
      it "prompts player 1 to choose their move" do
        expect { game.request_move }.not_to raise_error
        expect { game.player1.marker.to be("X").or(eq("O"))}
        expect { (game.player1.current_move).to be_a(integer) }

      end
    end
  end

  describe "#boardEmpty?" do
    context "checks if board is empty during the game" do
      it "returns true (if board is empty)" do
        board = [["", "", ""], ["", "", ""], ["", "", ""]]
        expect { game.boardEmpty?(board) }.not_to raise_error
        expect { game.boardEmpty?(board).to be_truthy }
      end
      it "returns false (if board is not empty)" do
        board = [["X", "O", "X"], ["O", "X", "X"], ["O", "X", "O"]]
        expect { game.boardEmpty?(board) }.not_to raise_error
        expect { game.boardEmpty?(board).to be_falsey }
      end
    end
  end



end
