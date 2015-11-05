require 'rspec'
require 'game.rb'

describe Game do
  let (:game) {Game.new(2)}


  describe '#initialize' do

    it "creates a deck" do

      expect(game.deck).to be_a(Deck)
    end

    it "stores players in an array" do

      expect(game.players).to be_an(Array)
      expect(game.players.all? { |player| player.is_a?(Player) }).to be_truthy

    end
  end

end
