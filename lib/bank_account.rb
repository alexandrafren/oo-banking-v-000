class BankAccount

  attr_accessor :bank_account, :balance, :status
  attr_reader :name
  def initialize(name, bank_account = nil)
    @name = name
    @bank_account = bank_account
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    puts "Your balance is #{@balance}."
  end

end
