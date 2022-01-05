# frozen_string_literal: true

# Prints a record to the terminal showing the accounts transactional history
class PrintStatement
  def initialize(account_history)
    @account_history = account_history
  end

  def print
    print_header
    print_body
  end

  private

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_body
    @account_history.history.each do |transaction|
      if transaction[:type] == 'deposit'
        puts "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
      else
        puts "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
      end
    end
  end
end
