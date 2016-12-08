require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
    def test_node_has_data
        score = "100"
        title = "Shawshank Redemption"
        node = Node.new(score, title)

        assert_equal score, node.score
    end

    def test_node_takes_two_arguments
        score = "100"
        title = "Shawshank Redemption"
        node = Node.new(score, title)

        assert_equal score, node.score
        assert_equal title, node.title
    end

    def test_node_can_link_to_left
        score_1 = "100"
        score_2 = "90"
        title_1 = "Shawshank Redemption"
        title_2 = "The Martian"
        node_1 = Node.new(score_1, title_1)
        node_2 = Node.new(score_2, title_2)
        node_1.left = node_2
        assert_equal node_2, node_1.left

    end

    def test_node_can_link_to_right
        score_1 = 10
        score_2 = 5
        title_1 = "OMG so bad"
        title_2 = "Mutuant Penguins - WTF"
        node_1 = Node.new(score_1, title_1)
        node_2 = Node.new(score_2, title_2)
        node_1.right = node_2

        assert_equal node_2, node_1.right
    end

end