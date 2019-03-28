class ProgrammingLenguage
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLenguage do
  let(:lenguage) { ProgrammingLenguage.new('Elixir') }

  it 'Should store the name of the lenguage' do
    expect(lenguage.name).to eq('Elixir')
  end

  context 'With not argument' do
    let(:lenguage) { ProgrammingLenguage.new }

    it 'Should default Ruby as name' do
      expect(lenguage.name).to eq('Ruby')
    end
  end
end
