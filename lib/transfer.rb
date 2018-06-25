class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status == "pending"
      if valid?
        @sender.withdraw(@amount)
        @receiver.deposit(@amount)
        @status = "complete"
        "Your transaction is complete."
      end
      else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.deposit(@amount)
      @receiver.withdraw(@amount)
      @status = "reversed"
    end
  end

end
