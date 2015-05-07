feature 'Placing ships on the board' do

  scenario 'Placing a single ship on the board' do
    ship  = Ship.new
    board = Board.new
    board.place(ship, :A1)
    
    expect(board.location :A1).to eq ship
  end

end