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
       if !valid?
         @status = "rejected"
         "Transaction rejected. Please check your account balance."
       elsif valid?
          @sender.withdraw(@amount)
          @receiver.deposit(@amount)
          @status = "complete"
        "Your transaction is complete."
      end
    else
        "Your transaction was previously completed or reversed."
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
