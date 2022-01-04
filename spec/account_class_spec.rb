require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end

  describe '.new' do
    it 'creates a new Account instance' do
      expect(@account).to be_an_instance_of(Account)
    end
  end

  describe '.balance' do
    it 'shows the user the balance of the Account, will be 0 on a new account' do
      expect(@account.balance).to be(0.00)
    end
  end

  describe '.deposit' do
    it 'increases the account balance by the amount deposited' do
      @account.deposit(500)
      expect(@account.balance).to be(500.00)
    end
    it 'allows for multiple deposits on the same account' do
      @account.deposit(500)
      @account.deposit(500)
      expect(@account.balance).to be(1000.00)
    end
  end

  describe '.withdraw' do
    it 'decreases the account balance by the amount withdrawn' do
      @account.withdraw(500)
      expect(@account.balance).to be(-500.00)
    end
    it 'allows for multiple withdraws on the same account' do
      @account.deposit(2000)
      expect(@account.balance).to be(2000.00)
      @account.withdraw(500)
      @account.withdraw(500)
      expect(@account.balance).to be(1000.00)
    end
  end
end
