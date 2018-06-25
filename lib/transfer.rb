class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :bank_account
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @reciever.valid?
  end

end
