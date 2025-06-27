# typed: true
# frozen_string_literal: true

module Rubyface
  # Discard pile, a.k.a. Shit pile.
  class Shitpile
    extend T::Sig

    attr_reader :cards

    sig { returns(Shitpile) }
    def self.empty
      new([])
    end

    sig { params(cards: T::Array[T.untyped]).void }
    def initialize(cards)
      @cards = cards
      @cards.freeze
      freeze
    end

    sig { params(cards: T::Array[T.untyped]).returns(Shitpile) }
    def take_shit(cards)
      self.class.new([*cards, *@cards])
    end
  end
end
