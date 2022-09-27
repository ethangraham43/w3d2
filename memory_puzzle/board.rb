require "byebug"

<<<<<<< HEAD
# class Board
#     def self.random_cards
#         alpha=("a".."z").to_a
#         shuffle_l=alpha.shuffle
#         eight_letters=[]
#         shuffle_l.each_with_index do |ele,idx|
#             if idx<8   
#                 eight_letters<<ele
#             end
#         end
#         eight_letters
#     end
=======
class Board
>>>>>>> 923ebd627b3c45814e706cd2c86f836ed5b090f7
    
    def initialize
        @grid = Array.new(4) {Array.new(4)}
        # @card = Card.new
        @cards=[:A, :B, :C, :D, :E, :F, :G, :H, :A, :B, :C, :D, :E, :F, :G, :H]
        @size=@grid.length*@grid.length
    end
<<<<<<< HEAD
 
    
=======


>>>>>>> 923ebd627b3c45814e706cd2c86f836ed5b090f7
    def populate
        i = 0
        while i < @size
            row = rand(0..3)
            col = rand(0..3)
            if @grid[row][col] == nil
                @grid[row][col] = @cards[i]
                i += 1
            end
        end
        @grid
    end

end

board=Board.new
board.populate
