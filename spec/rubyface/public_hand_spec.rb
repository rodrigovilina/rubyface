# frozen_string_literal: true

RSpec.describe Rubyface::PublicHand do
  let(:full_hand) do
    described_class.new(
      left_card: Rubyface::RegularCard.new(
        back_color: Rubyface::BackColor::BLUE,
        rank: Rubyface::Rank::ACE,
        suit: Rubyface::Suit::CLUBS
      ),
      center_card: Rubyface::RegularCard.new(
        back_color: Rubyface::BackColor::BLUE,
        rank: Rubyface::Rank::ACE,
        suit: Rubyface::Suit::CLUBS
      ),
      right_card: Rubyface::RegularCard.new(
        back_color: Rubyface::BackColor::BLUE,
        rank: Rubyface::Rank::ACE,
        suit: Rubyface::Suit::CLUBS
      )
    )
  end
  let(:empty_hand) do
    described_class.new(left_card: nil, center_card: nil, right_card: nil)
  end
  let(:hand_without_left_card) do
    described_class.new(left_card: nil, center_card: full_hand.center_card, right_card: full_hand.right_card)
  end
  let(:hand_without_center_card) do
    described_class.new(left_card: full_hand.left_card, center_card: nil, right_card: full_hand.right_card)
  end
  let(:hand_without_right_card) do
    described_class.new(left_card: full_hand.left_card, center_card: full_hand.center_card, right_card: nil)
  end

  describe '#left_card_present?' do
    context 'when the left card is present' do
      it 'returns true' do
        expect(full_hand.left_card_present?).to be(true)
      end
    end

    context 'when the left card is not present' do
      it 'returns false' do
        expect(empty_hand.left_card_present?).to be(false)
      end
    end
  end

  describe '#center_card_present?' do
    context 'when the center card is present' do
      it 'returns true' do
        expect(full_hand.center_card_present?).to be(true)
      end
    end

    context 'when the center card is not present' do
      it 'returns false' do
        expect(empty_hand.center_card_present?).to be(false)
      end
    end
  end

  describe '#right_card_present?' do
    context 'when the right card is present' do
      it 'returns true' do
        expect(full_hand.right_card_present?).to be(true)
      end
    end

    context 'when the right card is not present' do
      it 'returns false' do
        expect(empty_hand.right_card_present?).to be(false)
      end
    end
  end

  describe '#play_left_card' do
    context 'when the left card is present' do
      it 'returns the left card and the hand with the left card removed' do
        expect(full_hand.play_left_card).to eq([full_hand.left_card, hand_without_left_card])
      end
    end

    context 'when the left card is not present' do
      it 'raises an error' do
        expect { empty_hand.play_left_card }
          .to raise_error('No card to play')
      end
    end
  end

  describe '#play_center_card' do
    context 'when the center card is present' do
      it 'returns the center card and the hand with the center card removed' do
        expect(full_hand.play_center_card).to eq([full_hand.center_card, hand_without_center_card])
      end
    end

    context 'when the center card is not present' do
      it 'raises an error' do
        expect { empty_hand.play_center_card }
          .to raise_error('No card to play')
      end
    end
  end

  describe '#play_right_card' do
    context 'when the right card is present' do
      it 'returns the right card and the hand with the right card removed' do
        expect(full_hand.play_right_card).to eq([full_hand.right_card, hand_without_right_card])
      end
    end

    context 'when the right card is not present' do
      it 'raises an error' do
        expect { empty_hand.play_right_card }
          .to raise_error('No card to play')
      end
    end
  end
end
