class Game
    def initialize
        @board=Board.new
        @previous_guess=[]
    end

    def make_guess(pos)
        if !@previous_guess.empty?
            @board.card.reveal?
            @previous_guess<<@board.card
        else
            @previous_guess<<@board.card
            @board.card.reveal?
            card_1,card_2=@previous_guess
            if !@board.card.==(card_1,card_2)
                @board.card.hide
            end

        end
    end


    end

    def play
        over=false
        while over==false
            @board.render
            puts "Enter a guess, like: 3 2"
            pos=gets.chomp.split(" ")
            self.make_guess(pos)
            if @board.won?
                over=true
            end
        end
    end



end