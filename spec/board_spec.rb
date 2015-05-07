require 'board'

describe Board do

  it { is_expected.to respond_to(:place).with(3).arguments }
  it { is_expected.to respond_to(:location) }

  it 'can have ships placed on it horizontally' do
    ship = double :ship, size: 3
    subject.place ship, :A1, :horizontally

    expect(subject.location :A1).to eq ship
    expect(subject.location :A3).to eq ship
  end

end