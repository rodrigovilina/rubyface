# frozen_string_literal: true

RSpec.describe Rubyface::RegularCard do
  let(:regular_card) { described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::ACE, suit: Rubyface::Suit::CLUBS) }

  describe '#initialize' do
    specify do
      expect(regular_card).to be_a(described_class)
    end

    it 'raises an error if the rank is a joker' do
      expect do
        described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::JOKER, suit: Rubyface::Suit::CLUBS)
      end
.to raise_error(ArgumentError)
    end

    it 'raises an error if the suit is jokers' do
      expect do
        described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::ACE, suit: Rubyface::Suit::JOKERS)
      end
.to raise_error(ArgumentError)
    end
  end

  describe '#front_color' do
    it 'returns black if the suit is clubs' do
      regular_card = described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::ACE, suit: Rubyface::Suit::CLUBS)
      expect(regular_card.front_color).to eq(Rubyface::FrontColor::BLACK)
    end

    it 'returns black if the suit is spades' do
      regular_card = described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::ACE, suit: Rubyface::Suit::SPADES)
      expect(regular_card.front_color).to eq(Rubyface::FrontColor::BLACK)
    end

    it 'returns red if the suit is diamonds' do
      regular_card = described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::ACE, suit: Rubyface::Suit::DIAMONDS)
      expect(regular_card.front_color).to eq(Rubyface::FrontColor::RED)
    end

    it 'returns red if the suit is hearts' do
      regular_card = described_class.new(back_color: Rubyface::BackColor::BLUE, rank: Rubyface::Rank::ACE, suit: Rubyface::Suit::HEARTS)
      expect(regular_card.front_color).to eq(Rubyface::FrontColor::RED)
    end
  end
end
