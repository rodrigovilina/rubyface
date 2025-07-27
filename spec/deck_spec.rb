# frozen_string_literal: true

RSpec.describe Rubyface::Deck do
  describe '#initialize' do
    specify do
      expect(described_class.new).to be_a(described_class)
    end
  end

  describe '#cards' do
    specify do
      expect(described_class.new.cards).to eq([])
    end
  end

  describe '#take_cards' do
    specify do
      deck = described_class.new
      deck.take_cards(1)
      expect(deck.cards).to eq([])
    end
  end
end
