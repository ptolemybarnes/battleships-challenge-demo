require 'ship'

describe Ship do

  it 'has a size given to it when created' do
    ship = Ship.new(size: 3)
    expect(ship.size).to eq 3
  end

end