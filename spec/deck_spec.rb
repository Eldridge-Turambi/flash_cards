require './lib/card'
require './lib/deck'
require './lib/turn'

RSpec.describe Deck do
  before :each do
    @card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck1 = Deck.new(@cards)
  end

  it 'is an instance of Deck class' do
    expect(@deck1).to be_instance_of(Deck)
  end

  # it '#add_card' do
  #   @deck1.add_card(@card_1)
  #   @deck1.add_card(@card_2)
  #   @deck1.add_card(@card_3)
  #
  #   expect(@deck1.cards).to eq([@card_1, @card_2, @card_3])
  # end

  it '#count' do
    expect(@deck1.count).to eq(3)
  end

  it '#cards_in_category' do
    expect(@deck1.cards_in_category(:STEM)).to eq([@card_2, @card_3])
    expect(@deck1.cards_in_category(:Geography)).to eq([@card_1])
    expect(@deck1.cards_in_category('Pop Culture')).to eq([]) #Why is this in quotes!!!!!!
  end
end
