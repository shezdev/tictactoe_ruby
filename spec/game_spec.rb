require "Game"

describe Game do
  subject(:game) { described_class.new }
  # it { is_expected.to respond_to(:allocateMarkerTo).with(1).argument }
  it "allocates a marker to a player" do
    expect(game).to respond_to(:allocateMarkerTo).with(1).argument
  end
end
