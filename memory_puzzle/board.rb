require "byebug"
require_relative "card"

class Board
    
    def initialize
        @grid = Array.new(4) {Array.new(4)}
        @card = Card.new()
        # @cards=[:A, :B, :C, :D, :E, :F, :G, :H, :A, :B, :C, :D, :E, :F, :G, :H]
        cards = []
        @size=@grid.length*@grid.length

    end

    def random_letters_into_cards
        alpha=("a".."z").to_a
        card=@card.card_value=alpha.shuffle[0]  
        idx=0
        while i<@size/2
            if !@cards.include?(card)
                @cards.push(card,card)
            end
            i+=1
        end
    end

    def populate
        
        i = 0
        pairs = Hash.new(0)
        
        while i < @size
            row = rand(0..3)
            col = rand(0..3)
            if @grid[row][col] == nil

                @grid[row][col] = @cards[i]
                debugger
                i += 1
            end
        end
        @grid
        debugger
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

