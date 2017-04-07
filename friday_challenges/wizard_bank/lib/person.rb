require 'pry'
require 'pry-state'


class Person
  attr_reader :name, :cash, :bank_accounts

  def initialize(name, cash)
    @name = name
    @cash = cash
    run
  end

  def create_message(name, cash)
    "#{name} has been created with #{cash} galleons in cash."
  end

  def new_bank_account(bank_name)
    if bank_accounts.nil?
      @bank_accounts = {}
      new_bank_account(bank_name)
    else
      bank_accounts[bank_name] = 0
    end
    bank_accounts
  end

  def run
    puts create_message(name, cash)
  end

end
