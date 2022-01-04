require 'account_history'

describe AccountHistory do
  before(:each) do
    @account_history = AccountHistory.new
  end

  describe '.new' do
    it 'creates a new AccountHistory instance' do
      expect(@account_history).to be_an_instance_of(AccountHistory)
    end
  end

  describe '.history' do
    it 'an array create for each AccountHistory class' do
      expect(@account_history.history).to be_an_instance_of(Array)
    end
  end

  describe '.add' do
    it 'adds a hash of values to the history array' do
      @account_history.add(500.00, 1200.00, 'deposit')
      expect(@account_history.history[0][:amount]).to be(500.00)
    end
  end
end
