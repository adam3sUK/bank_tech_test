require './lib/account_history'
# Account class for seeing and editing balance
class Account
  attr_reader :balance

  def initialize
    @balance = 0.00
    @history = AccountHistory.new
  end

  def deposit(amount)
    @balance += amount.to_f
    @history.add(amount, @balance, 'deposit')
  end

  def withdraw(amount)
    @balance -= amount.to_f
    @history.add(amount, @balance, 'withdraw')
  end
end
