require "rspec"
require "deck.rb"


describe "Deck" do

  let(:my_deck) {Deck.new}
  describe "initialize" do

    it "makes a deck of 52 cards" do
      expect(my_deck.cards.length).to eq(52)
    end

    it "all cards are Card objects" do
      expect(my_deck.cards.all? { |card| card.is_a?(Card)} ).to be_truthy
    end

    it "contains a card exactly once" do
      unique = my_deck.cards.one?{ |card| card.face_value == '4' && card.suit == :heart}
      expect(unique).to be_truthy
    end
  end

  describe "#deal_card" do
    it "removes card from deck when dealt" do
      my_deck.deal_card
      expect(my_deck.cards.length).to eq(51)
    end

    it "return the card" do
      expect(my_deck.deal_card).to be_a(Card)
    end
  end

  describe "#shuffle?? Might not work***" do
    it "calls the shuffle method" do
      expect(my_deck.cards).to receive(:shuffle)
      my_deck.shuffle
    end
  end


end
