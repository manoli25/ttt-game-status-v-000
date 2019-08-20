# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Bottom row
  [1,4,7], # Bottom row
  [2,5,8],
  [0,4,8], # Diagonal from top left to bottom right
  [2,4,6] # Diagonal from top right to bottom left
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |space|
      board[space].all? { |player|  player = 'X'}
    # board[win_combination].all? do |player|
      return WIN_COMBINATIONS[win_combination]
    end
  end
end
