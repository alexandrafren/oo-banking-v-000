class BankAccount

  attr_accessor :name, :bank_account, :balance, :status
  def initialize(name, bank_account = nil)
    @name = name
    @bank_account = bank_account
    @balance = 1000
    @status = "open"
  end

end
