# Records a history of an accounts deposits and withdraws
class AccountHistory
  attr_reader :history

  def initialize
    @history = []
  end

  def add(amount, balance, transaction_type)
    @history.push({date: Time.new.strftime("%d/%m/%Y"), amount: amount, balance: balance, type: transaction_type})
  end
end
