# typed: true
# frozen_string_literal: true

module Rubyface
  # A non-joker card.
  class RegularCard < T::ImmutableStruct
    extend T::Sig
    include Card

    const :back_color, BackColor
    const :rank, Rank
    const :suit, Suit

    sig { params(back_color: BackColor, rank: Rank, suit: Suit).void }
    def initialize(back_color:, rank:, suit:)
      raise ArgumentError if rank == Rank::JOKER
      raise ArgumentError if suit == Suit::JOKERS

      super
    end

    sig { override.returns(FrontColor) }
    def front_color
      case suit
      when Suit::CLUBS, Suit::SPADES then FrontColor::BLACK
      when Suit::DIAMONDS, Suit::HEARTS then FrontColor::RED
      # :nocov:
      else raise ArgumentError
      # :nocov: # rubocop:disable Layout/CommentIndentation
      end
    end
  end
end
