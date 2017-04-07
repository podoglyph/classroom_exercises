require 'pry'
require 'pry-state'
require './lib/person.rb'

class Bank
  attr_reader :name, :cash

  def initialize(name)
    @name = name
    run
  end

  def open_account(person)

    person.new_bank_account(name)
  end

  def bank_create_message(name)
    "#{name} has been created."
  end

  def run
    puts bank_create_message(name)
  end

end
chase = Bank.new("Chase")
p1 = Person.new("Sally", 1000)

binding.pry
""
