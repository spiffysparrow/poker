require "rspec"
require "hand.rb"

describe Hand do
  hand_cards = [Card.new("5", :heart), Card.new("2", :diamond),
    Card.new("K", :spade), Card.new("6", :diamond), Card.new("3", :diamond)]
  let(:my_sucky_hand) { Hand.new(hand_cards) }

  describe "#initialize" do
    it "takes 5 cards" do
      expect(my_sucky_hand.cards.length).to eq(5)
    end

  end

  describe "#high_card" do
    it "returns highest card" do
      expect(my_sucky_hand.high_card).to eq(hand_cards[2])
    end
  end

  describe "#pair" do

    hand_cards = [Card.new("5", :heart), Card.new("2", :diamond),
      Card.new("K", :spade), Card.new("5", :diamond), Card.new("3", :diamond)]
    let(:my_pair_hand) { Hand.new(hand_cards) }

    it "returns false when no pair"
      expect(my_sucky_hand.pair?).to be_falsey
    end
    it "returns true when there is a pair" do
      expect(my_pair_hand.pair?).to be_truthy
    end

  end

  describe "#two_pair" do

    hand_cards = [Card.new("5", :heart), Card.new("2", :diamond),
      Card.new("K", :spade), Card.new("5", :diamond), Card.new("3", :diamond)]
    let(:my_pair_hand) { Hand.new(hand_cards) }

    hand_cards = [Card.new("5", :heart), Card.new("2", :diamond),
      Card.new("2", :spade), Card.new("5", :diamond), Card.new("3", :diamond)]
    let(:my_two_pair_hand) { Hand.new(hand_cards) }

    it "returns false when there is only one pair" do
      expect(my_two_pair_hand.two_pair?).to be_truthy
    end

  end

  describe "#three_of_a_kind" do

    card_values = [["5", :heart], ["2", :diamond], ["K", :spade], ["3", :diamond], ["5", :diamond]]

    hand_cards = card_values.map { |value, suit| Card.new(value, suit)}
    let(:my_pair_hand) { Hand.new(hand_cards) }

    card_values = [["5", :heart], ["5", :diamond], ["K", :spade], ["3", :diamond], ["5", :diamond]]
    hand_cards = card_values.map { |value, suit| Card.new(value, suit)}
    let(:my_three_of_a_kind_hand) { Hand.new(hand_cards) }

    it "returns false when there is not 3 of a kind" do
      expect(my_sucky_hand.three_of_a_kind?).to be_falsey
    end

    it "returns true when there is a 3 of a kind" do
      expect(my_three_of_a_kind_hand.three_of_a_kind?).to be_truthy
    end

  end

  describe "#straight" do

    card_values = [["2", :heart], ["3", :diamond], ["4", :spade], ["5", :diamond], ["6", :diamond]]
    let(:my_straight_hand) { Hand.new(card_values.map { |value, suit| Card.new(value, suit)}) }

    it "returns false when there is no straight" do
      expect(my_sucky_hand.straight?).to be_falsey
    end

    it "returns true when there is a straight" do
      expect(my_straight_hand.straight?).to be_truthy
    end

  end

  end

end
