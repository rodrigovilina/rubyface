# frozen_string_literal: true

RSpec.describe Rubyface::Shitpile do
  describe '.empty' do
    it 'returns an empty `Shitpile`', :aggregate_failures do
      shitpile = described_class.empty
      expect(shitpile).to be_a(described_class)
      expect(shitpile.cards.size).to be 0
    end
  end

  describe '#initialize' do
    specify do
      expect(described_class.new([])).to be_a described_class
    end

    specify do
      expect(described_class.new([])).to be_frozen
    end

    specify do
      expect(described_class.new([]).cards).to be_frozen
    end
  end

  describe '#cards' do
    specify do
      expect(described_class.empty.cards).to eq([])
    end
  end

  describe '#take_shit' do
    specify do
      shitpile = described_class.empty
      new_pile = shitpile.take_shit([1])
      expect(new_pile.cards).to eq([1])
    end
  end
end
