# typed: strict
# frozen_string_literal: true

module Rubyface
  # The `Suit` of a card.
  class Suit < T::Enum
    enums do
      CLUBS = new
      DIAMONDS = new
      HEARTS = new
      JOKERS = new
      SPADES = new
    end
  end
end
