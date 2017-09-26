require 'test/unit'
require_relative 'listify'

class ListifyTest < Test::Unit::TestCase
  def test_empty_list
    shopping = Listify.new
    assert_equal(shopping.list, [])
  end
  def test_add_item
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    assert_equal(shopping.list.size, 1)
  end
  def test_pretty_list
    shopping = Listify.new
    shopping.add_item("Milk", 2)
    assert_equal(shopping.pretty_list, "2 x Milk\n");
  end
  def test_replace_coke_with_water
    # Write your first test here
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    assert_equal(shopping.pretty_list, "2 x Water\n");
  end
  def test_replace_maltesers_with_jaffas
    shopping = Listify.new
    shopping.add_item("Maltesers", 4)
    assert_equal(shopping.pretty_list, "4 x Jaffas\n");
  end
  def test_remove_last_item
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    shopping.add_item("Maltesers", 4)
    shopping.remove_last
    assert_equal(shopping.pretty_list, "2 x Water\n");
  end
  def test_capitalize_item
    shopping = Listify.new
    shopping.add_item("cookies", 10)
    shopping.item_capitalize
    assert_equal(shopping.pretty_list, "10 x Cookies\n");
  end
end
