require './lib/account_history'
require './lib/print_statement'

# Account class for seeing and editing balance
class Account
  attr_reader :balance

  def initialize
    @balance = 0.00
    @history = AccountHistory.new
  end

  def deposit(amount)
    correct_format?(amount)
    @balance += amount.to_f
    @history.add(amount.to_f, @balance, 'deposit')
  end

  def withdraw(amount)
    correct_format?(amount)
    @balance -= amount.to_f
    @history.add(amount.to_f, @balance, 'withdraw')
  end

  def print
    PrintStatement.new(@history).print
  end

  private

  def correct_format?(amount)
    raise 'Please enter a numerical value' unless amount.is_a?(Integer) || amount.is_a?(Float)
  end
end
