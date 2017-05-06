require "Game"

describe Game do
  it { is_expected.to respond_to(:allocateMarkerTo).with(1).argument }
end
