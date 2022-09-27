require "byebug"

class Board
    
    def initialize
        @grid = Array.new(4) {Array.new(4)}
        @card = Card.new
        @cards=[:A, :B, :C, :D, :E, :F, :G, :H, :A, :B, :C, :D, :E, :F, :G, :H]
        @size=@grid.length*@grid.length

    end


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

    def render
         @grid.each do |row|
            print row
            print "\n"
         end
    end

    #Cards should card instances
    def won?
        @cards.all? {|card| card.reveal}
    end

    def reveal(guessed_pos)
        if !@grid[guessed_pos].reveal?
            @grid[guessed_pos].card_value
        end
    end



end

   

board=Board.new
board.populate
board.render
