# typed: true
# frozen_string_literal: true

module Rubyface
  # A playing card.
  module Card
    extend T::Sig
    extend T::Helpers

    abstract!

    sig { abstract.returns(BackColor) }
    def back_color; end

    sig { abstract.returns(FrontColor) }
    def front_color; end

    sig { abstract.returns(Suit) }
    def suit; end

    sig { abstract.returns(Rank) }
    def rank; end
  end
end
