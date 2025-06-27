# typed: strict
# frozen_string_literal: true

module Rubyface
  # A hand that's on the table.
  module TableHand
    extend T::Sig
    extend T::Helpers
    extend T::Generic
    include Kernel

    Elem = type_member

    abstract!

    # Returns a new instance with updated card values
    sig do
      params(left_card: T.nilable(Card), center_card: T.nilable(Card), right_card: T.nilable(Card)).returns(Elem)
    end
    def with(left_card: self.left_card, center_card: self.center_card, right_card: self.right_card)
      self.class.new(left_card: left_card, center_card: center_card, right_card: right_card)
    end

    sig { returns(T.nilable(Card)) }
    def left_card; end

    sig { returns(T.nilable(Card)) }
    def center_card; end

    sig { returns(T.nilable(Card)) }
    def right_card; end

    # Check if left card is present
    sig { returns(T::Boolean) }
    def left_card_present?
      !left_card.nil?
    end

    # Check if center card is present
    sig { returns(T::Boolean) }
    def center_card_present?
      !center_card.nil?
    end

    # Check if right card is present
    sig { returns(T::Boolean) }
    def right_card_present?
      !right_card.nil?
    end

    # Play the left card and return the card and updated hand
    sig { returns([Card, Elem]) }
    def play_left_card
      raise 'No card to play' unless left_card

      [T.must(left_card), with(left_card: nil)]
    end

    # Play the center card and return the card and updated hand
    sig { returns([Card, Elem]) }
    def play_center_card
      raise 'No card to play' unless center_card

      [T.must(center_card), with(center_card: nil)]
    end

    # Play the right card and return the card and updated hand
    sig { returns([Card, Elem]) }
    def play_right_card
      raise 'No card to play' unless right_card

      [T.must(right_card), with(right_card: nil)]
    end

    sig { params(position: TableCardPosition).returns(T::Boolean) }
    def present?(position) # rubocop:disable Metrics/MethodLength
      case position
      when TableCardPosition::Left then left_card_present?
      when TableCardPosition::Center then center_card_present?
      when TableCardPosition::Right then right_card_present?
      # :nocov:
      else T.absurd(position)
      # :nocov: # rubocop:disable Layout/CommentIndentation
      end
    end

    sig { returns(T::Array[TableCardPosition]) }
    def present_cards
      cards = []
      cards << TableCardPosition::Left if left_card_present?
      cards << TableCardPosition::Center if center_card_present?
      cards << TableCardPosition::Right if right_card_present?
      cards
    end
  end
end
