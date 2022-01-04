require 'account'

describe Account do
  before(:each) do
    @account = Account.create
  end

  describe '.create' do
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
    it 'increases the balance by the amount deposited' do
      @account.deposit(500)
      expect(@account.balance).to be(500.00)
    end
  end
end