# In the previous two exercises, you developed a Card class and a Deck class. You are now going to use those classes to create and evaluate poker hands.
# Create a class, PokerHand, that takes 5 cards from a Deck of Cards and evaluates those cards as a Poker hand. You should build your class using the following code skeleton:

class Card
  include Comparable

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
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

class PokerHand
  HAND_RANKINGS = { 'High card' =>       1,
                    'Pair' =>            2,
                    'Two pair' =>        3,
                    'Three of a kind' => 4,
                    'Straight' =>        5,
                    'Flush' =>           6,
                    'Full house' =>      7,
                    'Four of a kind' =>  8,
                    'Straight flush' =>  9,
                    'Royal flush' =>    10 }

  attr_reader :hand
  
  def initialize(deck)
    @hand = []
    5.times { @hand << deck.draw }
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def best_hand(other_hand)
    if HAND_RANKINGS[evaluate] > HAND_RANKINGS[other_hand.evaluate]
      self
    elsif HAND_RANKINGS[other_hand.evaluate] > HAND_RANKINGS[evaluate]
      other_hand
    else
      'Tie'
    end
  end

  private

  def royal_flush?
    return false if hand.min.rank != 10
    return false unless straight?
    flush?
  end

  def straight_flush?
    return false unless straight?
    flush?
  end

  def four_of_a_kind?
    (hand.count(hand.min) == 1 && hand.count(hand.max) == 4) ||
    (hand.count(hand.min) == 4 && hand.count(hand.max) == 1)
  end

  def full_house?
    (hand.count(hand.min) == 2 && hand.count(hand.max) == 3) ||
    (hand.count(hand.min) == 3 && hand.count(hand.max) == 2)
  end

  def flush?
    hand.uniq { |card| card.suit }.size == 1
  end

  def straight?
    1.upto(4) do |num|
      return false if hand.sort[0].value + num != hand.sort[num].value
    end
    true
  end

  def three_of_a_kind?
    hand.any? do |card_a|
      hand.count { |card_b| card_a.rank == card_b.rank } == 3
    end
  end

  def two_pair?
    sub_arrays = []
    hand.each_with_index do |_, start_idx|
      (start_idx + 1).upto(hand.size - 1) do |end_idx|
        sub_arrays << [hand[start_idx], hand[end_idx]]
      end
    end
    sub_arrays.select! do |sub_array|
      sub_array[0].rank == sub_array[1].rank
    end
    sub_arrays.size == 2
  end

  def pair?
    hand.any? do |card_a|
      hand.count { |card_b| card_a.rank == card_b.rank } == 2
    end
  end
end
require 'pry'
hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand1 = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand1.evaluate == 'Royal flush'

hand2 = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand2.evaluate == 'Straight flush'

hand3 = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand3.evaluate == 'Four of a kind'

hand4 = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand4.evaluate == 'Full house'

hand5 = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand5.evaluate == 'Flush'

hand6 = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand6.evaluate == 'Straight'

hand7 = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand7.evaluate == 'Straight'

hand8 = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand8.evaluate == 'Three of a kind'

hand9 = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand9.evaluate == 'Two pair'

hand10 = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand10.evaluate == 'Pair'

hand11 = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand11.evaluate == 'High card'

p hand1.best_hand(hand11)
p hand10.best_hand(hand2)
p hand6.best_hand(hand7)

# How would you modify our original solution to choose the best hand between two poker hands?
# How would you modify this class if you wanted the individual classification methods to be public class methods that work with an Array of 5 cards?

class PublicPokerHand
  attr_reader :hand
  
  def initialize(deck)
    @hand = []
    5.times { @hand << deck.draw }
  end

  def print
    puts hand
  end

  def evaluate
    case
    when PublicPokerHand.royal_flush?(hand)      then 'Royal flush'
    when PublicPokerHand.straight_flush?(hand)   then 'Straight flush'
    when PublicPokerHand.four_of_a_kind?(hand)   then 'Four of a kind'
    when PublicPokerHand.full_house?(hand)       then 'Full house'
    when PublicPokerHand.flush?(hand)            then 'Flush'
    when PublicPokerHand.straight?(hand)         then 'Straight'
    when PublicPokerHand.three_of_a_kind?(hand)  then 'Three of a kind'
    when PublicPokerHand.two_pair?(hand)         then 'Two pair'
    when PublicPokerHand.pair?(hand)             then 'Pair'
    else                                              'High card'
    end
  end

  def self.royal_flush?(hand)
    return false if hand.min.rank != 10
    1.upto(4) do |num|
      return false if hand.sort[0].value + num != hand.sort[num].value
    end
    hand.uniq { |card| card.suit }.size == 1
  end

  def self.straight_flush?(hand)
    1.upto(4) do |num|
      return false if hand.sort[0].value + num != hand.sort[num].value
    end
    hand.uniq { |card| card.suit }.size == 1
  end

  def self.four_of_a_kind?(hand)
    (hand.count(hand.min) == 1 && hand.count(hand.max) == 4) ||
    (hand.count(hand.min) == 4 && hand.count(hand.max) == 1)
  end

  def self.full_house?(hand)
    (hand.count(hand.min) == 2 && hand.count(hand.max) == 3) ||
    (hand.count(hand.min) == 3 && hand.count(hand.max) == 2)
  end

  def self.flush?(hand)
    hand.uniq { |card| card.suit }.size == 1
  end

  def self.straight?(hand)
    1.upto(4) do |num|
      return false if hand.sort[0].value + num != hand.sort[num].value
    end
    true
  end

  def self.three_of_a_kind?(hand)
    hand.any? do |card_a|
      hand.count { |card_b| card_a.rank == card_b.rank } == 3
    end
  end

  def self.two_pair?(hand)
    sub_arrays = []
    hand.each_with_index do |_, start_idx|
      (start_idx + 1).upto(hand.size - 1) do |end_idx|
        sub_arrays << [hand[start_idx], hand[end_idx]]
      end
    end
    sub_arrays.select! do |sub_array|
      sub_array[0].rank == sub_array[1].rank
    end
    sub_arrays.size == 2
  end

  def self.pair?(hand)
    hand.any? do |card_a|
      hand.count { |card_b| card_a.rank == card_b.rank } == 2
    end
  end
end

hand = PublicPokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PublicPokerHand type.
hand = PublicPokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PublicPokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PublicPokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PublicPokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PublicPokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PublicPokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PublicPokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PublicPokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PublicPokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PublicPokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PublicPokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'

# How would you modify our original solution to choose the best 5-card hand from a 7-card poker hand?

# Find all 5 element sub-arrays and then check for each hand ranking.
