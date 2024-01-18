# Using the Card class from the previous exercise, create a Deck class that contains all of the standard 52 playing cards. Use the following code to start your work.
# The Deck class should provide a #draw method to deal one card.
# The Deck should be shuffled when it is initialized and, if it runs out of cards, it should reset itself by generating a new set of 52 shuffled cards.

class Card
  include Comparable

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other_card)
    VALUES.fetch(rank, rank) <=> VALUES.fetch(other_card.rank, other_card.rank)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_reader :cards

  def initialize
    @cards = []
    reset
  end

  def draw
    reset if cards.empty?
    cards.pop
  end

  private

  def reset
    RANKS.each do |rank|
      SUITS.each { |suit| @cards << Card.new(rank, suit) }
    end
    @cards.shuffle!
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2

# Note that the last line should almost always be true.
# If you shuffle the deck 1000 times a second, you will be very, very, very old before you see two consecutive shuffles produce the same results.
# If you get a false result, you almost certainly have something wrong.
