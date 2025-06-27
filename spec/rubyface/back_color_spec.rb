# frozen_string_literal: true

RSpec.describe Rubyface::BackColor do
  describe 'values' do
    # rubocop:disable RSpec/Be
    it 'has five values', :aggregate_failures do
      expect(described_class::BLUE).to be
      expect(described_class::RED).to be
    end
    # rubocop:enable RSpec/Be
  end
end
