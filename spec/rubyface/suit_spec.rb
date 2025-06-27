# frozen_string_literal: true

RSpec.describe Rubyface::Suit do
  describe 'values' do
    # rubocop:disable RSpec/Be
    it 'has five values', :aggregate_failures do
      expect(described_class::CLUBS).to be
      expect(described_class::DIAMONDS).to be
      expect(described_class::HEARTS).to be
      expect(described_class::JOKERS).to be
      expect(described_class::SPADES).to be
    end
    # rubocop:enable RSpec/Be
  end
end
