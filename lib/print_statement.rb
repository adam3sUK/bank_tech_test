# Prints a record to the terminal showings the accounts transactional history
class PrintStatement
  def initialize(account_history)
    @account_history = account_history
  end

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_body
    @account_history.history.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
    end
  end
end
