require "Game"

describe Game do
  # it { is_expected.to respond_to(:allocateMarkerTo).with(1).argument }
  it "allocates a marker to a player" do
    expect(subject).to respond_to(:allocateMarkerTo).with(1).argument
  end
end
