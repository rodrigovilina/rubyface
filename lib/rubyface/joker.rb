# typed: true
# frozen_string_literal: true

module Rubyface
  # A joker card.
  class Joker < T::ImmutableStruct
    extend T::Sig
    include Card

    const :back_color, BackColor
    const :front_color, FrontColor

    def self.all
      [
        new(back_color: BackColor::BLUE, front_color: FrontColor::BLACK),
        new(back_color: BackColor::BLUE, front_color: FrontColor::RED),
        new(back_color: BackColor::RED, front_color: FrontColor::BLACK),
        new(back_color: BackColor::RED, front_color: FrontColor::RED),
      ]
    end

    sig { override.returns(Rank) }
    def rank
      Rank::JOKER
    end

    sig { override.returns(Suit) }
    def suit
      Suit::JOKERS
    end
  end
end
