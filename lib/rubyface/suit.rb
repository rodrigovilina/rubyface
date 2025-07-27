# typed: strict
# frozen_string_literal: true

module Rubyface
  # The `Suit` of a card.
  class Suit < T::Enum
    extend T::Sig

    enums do
      CLUBS = new
      DIAMONDS = new
      HEARTS = new
      JOKERS = new
      SPADES = new
    end

    sig { returns(T::Array[Suit]) }
    def self.regular
      values.reject { |suit| suit == JOKERS }
    end
  end
end
