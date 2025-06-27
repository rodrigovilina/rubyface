# typed: strict
# frozen_string_literal: true

module Rubyface
  # Position for a card on one of the table hands.
  class TableCardPosition < T::Enum
    enums do
      Left = new
      Center = new
      Right = new
    end
  end
end
