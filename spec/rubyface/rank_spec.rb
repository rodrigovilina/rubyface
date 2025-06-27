# frozen_string_literal: true

RSpec.describe Rubyface::Rank do
  describe 'values' do
    # rubocop:disable RSpec/Be
    it 'has five values', :aggregate_failures do # rubocop:disable RSpec/ExampleLength
      expect(described_class::TWO).to be
      expect(described_class::THREE).to be
      expect(described_class::FOUR).to be
      expect(described_class::FIVE).to be
      expect(described_class::SIX).to be
      expect(described_class::SEVEN).to be
      expect(described_class::EIGHT).to be
      expect(described_class::NINE).to be
      expect(described_class::TEN).to be
      expect(described_class::JACK).to be
      expect(described_class::QUEEN).to be
      expect(described_class::KING).to be
      expect(described_class::ACE).to be
      expect(described_class::JOKER).to be
    end
    # rubocop:enable RSpec/Be
  end
end
