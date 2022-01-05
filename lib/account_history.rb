# Records a history of an accounts deposits and withdraws
class AccountHistory
  attr_reader :history

  def initialize
    @history = []
  end

  def add(amount, balance, transaction_type)
    @history.push(
      { date: Time.new.strftime('%d/%m/%Y'), amount: sprintf('%.2f', amount), balance: sprintf('%.2f', balance), type: transaction_type }
    )
  end
end
