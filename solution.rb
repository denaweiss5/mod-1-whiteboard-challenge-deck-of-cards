require 'pry'
class Deck

        @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    
        attr_accessor :cards
     
        def initialize
        
            @cards = []
           
            @@rank.each do |rank|
                @@suit.each do |suit|
                    @cards << Card.new(suit, rank)
                end
            end
           
        end

        
    
        def choose_card
            @cards.delete_at(rand(@cards.length))
        end
 
end

class Card
        
        attr_reader :rank, :suit
    
        def initialize(suit, rank)
            @rank = rank
            @suit = suit
        end
    

end
binding.pry