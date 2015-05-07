require 'board'

describe Board do

  it { is_expected.to respond_to(:place).with(2).arguments }
  it { is_expected.to respond_to(:location) }

  it 'can have ships placed on it' do
    ship = double :ship
    subject.place ship, :A1

    expect(subject.location :A1).to eq ship
  end

end