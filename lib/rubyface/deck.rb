# typed: true
# frozen_string_literal: true

module Rubyface
  class Deck
    attr_accessor :cards

    def self.full # rubocop:disable Metrics/MethodLength
      regulars = BackColor.values.flat_map do |back_color|
        Suit.regular.flat_map do |suit|
          Rank.regular.map { |rank| RegularCard.new(back_color:, rank:, suit:) }
        end
      end

      new(Joker.all + regulars)
    end

    def initialize(cards)
      @cards = cards
    end

    def take_cards(amount)
      @cards.pop(amount)
    end
  end
end
