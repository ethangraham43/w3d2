require "byebug"

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
    
    def initialize
        @grid = Array.new(4) {Array.new(4)}
        # @card = Card.new
        @cards=[]
        @size=@grid.length*@grid.length
        @letters=Board::random_cards
    end
 
    
    def populate
        idx=0
        j=0
        until @cards.length==@size
            # row=rand(0...@grid.length)
            # col=rand(0...@grid.length)
            #  @cards.concat(Board::random_cards)
             
            #  @grid[i]=@cards.map do |row|
            #     sub=[]
            #     @cards.each_with_index |ele,idx|
            @cards<<Board::random_cards[idx]
            if idx!=0 && idx%4==0
                @grid[idx].concat(@cards)
                debugger
            end
            idx+=1

        end
    end


end

board=Board.new
board.populate