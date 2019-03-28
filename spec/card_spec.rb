class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before block executes for every it blocks
  # before do
  #   @card = Card.new('Ace', 'Spades')
  #  end

  # let is used for Memoritazion variables for each it block

  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and it can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison),
                         "I expect #{comparison} but i got #{card.suit} insted."
  end
end
