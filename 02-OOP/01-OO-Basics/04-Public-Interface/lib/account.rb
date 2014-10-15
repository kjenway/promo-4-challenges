# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)
  attr_reader :name, :position

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban
    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    if amount > 0
      add_transaction(-1 * amount)
      return "You've just withdrawn #{amount} euros"
    else
      return "You can't withdraw a negative amount"
    end
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    if amount > 0
      add_transaction(amount)
      return "You've just deposit #{amount} euros"
    else
      return "You can't make a negative deposit"
    end
  end

  def transactions_history(args = {})
    return "no password given" if args[:password].nil?
    (args[:password] == @password) ? "your transactions history: #{@transactions.each { |y| "#{y}, " } } " : "wrong password"
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    x = @iban.gsub(/\W/, '').chars
    return x[0..3].join + "********************" + x[-3..-1].join
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    "=>  Owner: #{@name}\nIBAN: #{iban}\nCurrent amount: #{@position} euros\n"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
    @transactions << amount
    @position += amount
  end
end
