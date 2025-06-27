# typed: strict
# frozen_string_literal: true

module Rubyface
  # The hand that's facing up.
  class PublicHand < T::ImmutableStruct
    extend T::Sig
    extend T::Generic
    include T::Struct::ActsAsComparable
    include TableHand

    Elem = type_member

    const :left_card, T.nilable(Card)
    const :center_card, T.nilable(Card)
    const :right_card, T.nilable(Card)
  end
end
