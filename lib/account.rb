class Account

  def initalize
    @balance = 0
  end

  def self.create
    Account.new
  end
end