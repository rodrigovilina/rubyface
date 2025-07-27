# typed: strict
# frozen_string_literal: true

module Rubyface
  # Rank of a card.
  class Rank < T::Enum
    extend T::Sig

    enums do # rubocop:disable Metrics/BlockLength
      TWO = new
      THREE = new
      FOUR = new
      FIVE = new
      SIX = new
      SEVEN = new
      EIGHT = new
      NINE = new
      TEN = new
      JACK = new
      QUEEN = new
      KING = new
      ACE = new
      JOKER = new
    end

    sig { returns(T::Array[Rank]) }
    def self.regular
      values.reject { |rank| rank == JOKER }
    end
  end
end
