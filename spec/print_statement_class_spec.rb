require './lib/print_statement'

describe PrintStatement do
  let(:history) do
    double(
      'Account History',
      history: [{ date: '03/01/2022', amount: '200.00', balance: '200.00', type: 'deposit' }, { date: '05/01/2022', amount: '300.00', balance: '500.00', type: 'deposit' }]
    )
  end

  before(:each) do
    @statement = PrintStatement.new(history)
  end

  describe '.new' do
    it 'creates a new PrintStatement instance' do
      expect(@statement).to be_an_instance_of(PrintStatement)
    end
  end

  describe '.print_header' do
    it 'prints the header of the statement' do
      expect { @statement.print_header }.to output(a_string_including('date || credit || debit || balance')).to_stdout
    end
  end

  describe '.print_body' do
    it 'prints the body of the statement' do
      expect { @statement.print_body }.to output(a_string_including('03/01/2022 || 200.00 || || 200.00')).to_stdout
    end
  end
end
