# frozen_string_literal: true

module Rubyface
  # A joker card.
  class Joker < T::ImmutableStruct
    extend T::Sig
    include Card

    const :back_color, BackColor
    const :front_color, FrontColor

    sig { returns(Rank) }
    def rank
      Rank::JOKER
    end

    sig { returns(Suit) }
    def suit
      Suit::JOKERS
    end
  end
end
