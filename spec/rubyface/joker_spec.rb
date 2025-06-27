# frozen_string_literal: true

RSpec.describe Rubyface::Joker do
  let(:joker) { described_class.new(back_color: Rubyface::BackColor::BLUE, front_color: Rubyface::FrontColor::BLACK) }

  describe '#initialize' do
    specify do
      expect(joker).to be_a(described_class)
    end
  end

  describe '#rank' do
    specify do
      expect(joker.rank).to eq(Rubyface::Rank::JOKER)
    end
  end

  describe '#suit' do
    specify do
      expect(joker.suit).to eq(Rubyface::Suit::JOKERS)
    end
  end
end
