require 'minitest/autorun'
require 'minitest/emoji'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
	def test_sorts_an_empty_list
		bs = BubbleSort.new
		results = bs.sort([])
		assert_equal [], results
	end

	def test_sorts_a_single_element
		bs = BubbleSort.new
		results = bs.sort([2])
		assert_equal [2], results
	end

	def test_sorts_two_in_order_elements
		bs = BubbleSort.new
		results = bs.sort([1,2])
		assert_equal [1,2], results
	end

	def test_sorts_two_elements_in_reverse_order
		bs = BubbleSort.new
		results = bs.sort([2,1])
		assert_equal [1,2], results
	end

	def test_sorts_three_sorted_numbers
		bs = BubbleSort.new
		results = bs.sort([1,2,3])
		assert_equal [1,2,3], results
	end

	def test_total_victory
		bs = BubbleSort.new
		results = bs.sort([6,2,3,1,4,8,9,0,7,5])
		assert_equal (0..9).to_a, results
	end

	def test_a_single_pass_through_a_whole_list
		bs = BubbleSort.new
		results = bs.sorting_pass([6,2,3,1,4,8,9,0,7,5])
		assert_equal [2, 3, 1, 4, 6, 8, 0, 7, 5, 9], results
	end
end