require 'minitest/autorun'
require_relative 'iterators'

class MainTest < Minitest::Test
  def test_print_capitals
    assert_output "ORIOLE\n" do
      print_capitals ['oriole']
    end

    assert_output "PEYTON\nSKYLER\nLENNON\nBLAKE\nMARLEY\n" do
      print_capitals ['Peyton', 'Skyler', 'Lennon', 'Blake', 'Marley']
    end
  end

  def test_double_it
    assert_equal [2, 10, 50], double_it([1, 5, 25])
    assert_equal [-12, 200, 4], double_it([-6, 100, 2])
  end

  def test_find_evens
    assert_equal [2, 6, 10], find_evens([1, 2, 3, 5, 6, 7, 10, 13])
    assert_equal [], find_evens([1, 3, 5, 7, 13])
    assert_equal [-2], find_evens([1, 3, 5, -2, 7, 13])
  end

  def test_product
    assert_equal 308, product([7, 4, 11])
    assert_equal 2, product([2])
    assert_equal 1, product([])
  end

  def test_square_only_odds
    assert_equal [49, 121, 9], square_only_odds([4, 7, 10, 11, 4, 3])
    assert_equal [9, 49, 81, 121, 25, 9], square_only_odds([3, 7, 9, 11, 5, 3])
    assert_equal [], square_only_odds([4, 10, 4])
    assert_equal [], square_only_odds([])
  end

  def test_sum_of_squares
    assert_equal 14, sum_of_squares([3, 1, 2])
    assert_equal 0, sum_of_squares([])
    assert_equal 298, sum_of_squares([-7, 10, -10, 7])
  end

  def test_ordinals
    assert_equal [], ordinals([])
    assert_equal ['1st'], ordinals([1])
    assert_equal ['1st', '2nd', '3rd', '4th'], ordinals([1, 2, 3, 4])
    assert_equal ['34th', '91st'], ordinals([34, 91])
  end
end
