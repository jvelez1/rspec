# https://relishapp.com/rspec/rspec-core/v/3-8/docs/hooks/before-and-after-hooks
RSpec.describe 'nested hooks' do
  # before context only valid for own context
  # In this case only valid for nested hooks
  before(:context) do
    puts 'OUTER before context'
  end

  # Before example it's for all context
  # It's valid for nested hooks context, and With condition A context
  before(:example) do
    puts 'OUTER before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'With condition A' do
    # In this case only valid for With condition A
    before(:context) do
      puts 'INNER before context'
    end

    before(:example) do
      puts 'INNER before example'
    end

    it 'does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction math' do
      expect(1 - 1).to eq(0)
    end
  end
end
