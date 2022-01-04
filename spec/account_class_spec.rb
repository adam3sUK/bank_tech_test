require 'account'

describe Account do
  describe '.create' do
    it 'creates a new Account instance' do
      account = Account.create
			expect(account).to be_an_instance_of(Account)
    end
  end
end