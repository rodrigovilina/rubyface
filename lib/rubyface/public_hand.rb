# typed: strict
# frozen_string_literal: true

module Rubyface
  # The hand that's facing up.
  class PublicHand < T::ImmutableStruct
    extend T::Sig
    include T::Struct::ActsAsComparable

    const :left_card, T.nilable(Card)
    const :center_card, T.nilable(Card)
    const :right_card, T.nilable(Card)

    sig do
      params(left_card: T.nilable(Card), center_card: T.nilable(Card), right_card: T.nilable(Card)).returns(PublicHand)
    end
    def with(left_card: self.left_card, center_card: self.center_card, right_card: self.right_card)
      self.class.new(left_card: left_card, center_card: center_card, right_card: right_card)
    end

    sig { returns(T::Boolean) }
    def left_card_present?
      !left_card.nil?
    end

    sig { returns(T::Boolean) }
    def center_card_present?
      !center_card.nil?
    end

    sig { returns(T::Boolean) }
    def right_card_present?
      !right_card.nil?
    end

    sig { returns([Card, PublicHand]) }
    def play_left_card
      raise 'No card to play' unless left_card

      [T.must(left_card), with(left_card: nil)]
    end

    sig { returns([Card, PublicHand]) }
    def play_center_card
      raise 'No card to play' unless center_card

      [T.must(center_card), with(center_card: nil)]
    end

    sig { returns([Card, PublicHand]) }
    def play_right_card
      raise 'No card to play' unless right_card

      [T.must(right_card), with(right_card: nil)]
    end
  end
end
