require './lib/print_statement.rb'

describe PrintStatement do
  before(:each) do
    @statement = PrintStatement.new
  end

  describe '.new' do
    it 'creates a new PrintStatement instance' do
      expect(@statement).to be_an_instance_of(PrintStatement)
    end
  end

  describe '.print_header' do
    it 'prints the header of the statement' do
      expect{ @statement.print_header }.to output(a_string_including('date || credit || debit || balance')).to_stdout
    end
  end
end