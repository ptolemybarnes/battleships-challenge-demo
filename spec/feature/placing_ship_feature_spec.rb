feature 'Placing ships on the board' do

  scenario 'Placing a single ship of size 3 horizontally on the board' do
    ship  = Ship.new(size: 3)
    board = Board.new
    board.place(ship, :A1, :horizontally)

    expect(board.location :A1).to eq ship
    expect(board.location :A2).to eq ship
    expect(board.location :A3).to eq ship
  end

end