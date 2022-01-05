require './lib/print_statement.rb'

describe PrintStatement do
  describe '.new' do
    it 'creates a new PrintStatement instance' do
      statement = PrintStatement.new
      expect(statement).to be_an_instance_of(PrintStatement)
    end
  end
end