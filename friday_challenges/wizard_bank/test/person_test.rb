require 'minitest/autorun'
require 'minitest/pride'
require './lib/person.rb'

class PersonTest < Minitest::Test

  def test_person_can_exist
    p = Person.new("Minerva", 1000)

    assert_equal Person, p.class
  end

  def test_person_has_accessible_name
    p = Person.new("Minerva", 1000)

    assert_equal "Minerva", p.name
  end

  def test_person_has_cash
    p = Person.new("Minerva", 1000)

    assert_equal 1000, p.cash
  end

  def test_multiple_people_can_exist
    p1 = Person.new("Minerva", 1000)
    p2 = Person.new("Sam", 2000)

    assert_equal "Minerva", p1.name
    assert_equal 1000, p1.cash
    assert_equal "Sam", p2.name
    assert_equal 2000, p2.cash
  end

  def test_creation_message_runs
    p3 = Person.new("Billy Bob", 3000)

    assert_equal "Billy Bob has been created with 3000 galleons in cash.", p3.create_message("Billy Bob", 3000)
  end

  def test_person_can_have_bank_account
    p1 = Person.new("Minerva", 1000)

    p1.new_bank_account("Chase")

    assert_equal ({"Chase"=>0}), p1.bank_accounts
  end


end
