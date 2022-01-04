# Account class for seeing and editing balance
class Account
  attr_reader :balance

  def initialize
    @balance = 0.00
  end

  def deposit(amount)
    @balance += amount.to_f
  end

  def withdraw(amount)
    @balance -= amount.to_f
  end
end
