# Records a history of an accounts deposits and withdraws
class AccountHistory
  attr_reader :history

  def initialize
    @history = []
  end

  def add(amount, balance, transaction_type)
    date = Time.new.strftime('%d/%m/%Y')
    @history.push(
      { date: date, amount: format('%.2f', amount), balance: format('%.2f', balance), type: transaction_type }
    )
  end
end
