# frozen_string_literal: true

module Rubyface
  # A playing card.
  module Card
    extend T::Sig

    sig { returns(BackColor) }
    def back_color; end

    sig { returns(FrontColor) }
    def front_color; end

    sig { returns(Suit) }
    def suit; end

    sig { returns(Rank) }
    def rank; end
  end
end
