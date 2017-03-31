require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank.rb'

class BankTest < Minitest::Test

  def test_bank_exists
    b = Bank.new("Chase")

    assert_equal Bank, b.class
  end

  def test_bank_has_accessible_name
    b = Bank.new("Chase")

    assert_equal "Chase", b.name
  end

  def test_bank_can_access_person_class
    chase = Bank.new("Chase")
    p1 = Person.new("Minerva", 1000)

    assert_equal Person, p1.class

    account = chase.open_account(p1)

    assert_equal ({"Chase"=>0}), account
  end

  def test_bank_can_open_an_account_for_person
    chase = Bank.new("Chase")
    p1 = Person.new("Minerva", 1000)

    chase.open_account(p1)

    assert_equal ({"Chase"=>0}), p1.bank_accounts

  end

end
