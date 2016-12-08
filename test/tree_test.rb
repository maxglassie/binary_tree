require 'minitest/autorun'
require 'minitest/pride'
require './lib/tree.rb'

class BinarySearchTreeTest < Minitest::Test

def test_does_the_testing_file_work
    true
end

def test_does_tree_create_an_object
    tree = Tree.new
    assert Object, tree.class
end

def test_can_tree_add_a_node
    tree = Tree.new
    tree.head = Node.new(50, "A")
    assert_equal 50, tree.head.score
end

def test_can_insert_add_a_node
    tree = Tree.new
    tree.insert(50, "A")
    assert_equal 50, tree.head.score
    # p tree.head.score
end

def test_can_tree_add_second_node_to_left
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(30, "B")
    assert_equal 30, tree.head.left.score
    # p tree
end

def test_can_insert_second_node_to_right
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(70, "B")
    assert_equal 70, tree.head.right.score
    # p tree.head.right.score
    # p tree
end

def test_can_insert_third_node_to_left
    # skip
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(30, "B")
    tree.insert(20, "C")
    assert_equal 20, tree.head.left.left.score
    # p tree
end

def test_can_insert_third_node_to_right
    # skip
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(60, "B")
    tree.insert(70, "C")
    assert_equal 70, tree.head.right.right.score
    # p tree
end

def test_can_insert_third_to_left_and_right
     # skip
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(60, "B")
    tree.insert(70, "C")
    tree.insert(30, "B")
    tree.insert(20, "C")
    assert_equal 70, tree.head.right.right.score
    assert_equal 20, tree.head.left.left.score
    # p tree
end

def test_can_insert_five_to_left_and_right
     # skip
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(60, "<B")
    tree.insert(70, "<C")
    tree.insert(80, "<D")
    tree.insert(90, "<E")
    tree.insert(40, ">B")
    tree.insert(30, ">C")
    tree.insert(20, ">D")
    tree.insert(10, ">E")
    assert_equal 90, tree.head.right.right.right.right.score
    assert_equal 10, tree.head.left.left.left.left.score
    # p tree
end

def test_include_returns_error_if_head_nil
    tree = Tree.new
    assert_equal "Error", tree.include?(0)
end

def test_does_include_method_work_for_one_depth
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(60, "<B")
    assert_equal true, tree.include?(60)
end

def test_does_include_method_work_for_whatever_depth
    # skip
    tree = Tree.new
    tree.insert(70, "A")
    tree.insert(58, "B")
    tree.insert(64, "C")
    tree.insert(35, "D")
    tree.insert(52, "E")
    tree.insert(17, "B")
    tree.insert(4, "C")
    tree.insert(57, "D")
    tree.insert(81, "E")
    # p tree
    assert_equal true, tree.include?(57)
end

def test_depth_of_returns_depth_of_zero
    tree = Tree.new
    tree.insert(50, "A")
    tree.insert(60, "<B")
    assert_equal 1, tree.depth_of(60)
end

def test_depth_of_returns_depth_of_3
    tree = Tree.new
    tree.insert(70, "A")
    tree.insert(58, "B")
    tree.insert(64, "C")
    tree.insert(35, "D")
    tree.insert(52, "E")
    tree.insert(17, "B")
    tree.insert(4, "C")
    tree.insert(57, "D")
    tree.insert(81, "E")
    assert_equal 3, tree.depth_of(52)
end

def test_min_returns_min_number
    tree = Tree.new
    tree.insert(70, "A")
    tree.insert(58, "B")
    tree.insert(64, "C")
    tree.insert(35, "D")
    tree.insert(52, "E")
    tree.insert(17, "B")
    tree.insert(4, "C")
    tree.insert(57, "D")
    tree.insert(81, "E")
    assert_equal 81, tree.min
end


def test_min_returns_min_number
    skip
    tree = Tree.new
    tree.insert(70, "A")
    tree.insert(58, "B")
    tree.insert(64, "C")
    tree.insert(35, "D")
    tree.insert(52, "E")
    tree.insert(17, "B")
    tree.insert(4, "C")
    tree.insert(57, "D")
    tree.insert(81, "E")
    assert_equal 4, tree.min
end

def test_min_returns_min_title_score_as_hash
    tree = Tree.new
    tree.insert(70, "A")
    tree.insert(58, "B")
    tree.insert(64, "C")
    tree.insert(35, "D")
    tree.insert(52, "E")
    tree.insert(17, "B")
    tree.insert(4, "C")
    tree.insert(57, "D")
    tree.insert(81, "E")
    answer = Hash.new
    answer["C"] = 4
    assert_equal answer, tree.min
end

def test_max_returns_max_title_score_as_hash
    tree = Tree.new
    tree.insert(70, "A")
    tree.insert(58, "B")
    tree.insert(64, "C")
    tree.insert(35, "D")
    tree.insert(52, "E")
    tree.insert(17, "B")
    tree.insert(4, "C")
    tree.insert(57, "D")
    tree.insert(81, "E")
    answer = Hash.new
    answer["E"] = 81
    assert_equal answer, tree.max
end

#class end
end