class Card
    attr_reader :card_value

    def initialize(card_value)
        @card_value = card_value
        @face_up = false
    end

    def hide?
        @face_up = false
    end

    def reveal(arg)
        @face_up = true
    end

    def ==
        
    end
end