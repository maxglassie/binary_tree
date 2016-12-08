require './lib/node.rb'

class Tree
    attr_accessor :head

    def initialize
        @head 
    end

    def insert(score, title) # skidoosh
        depth = 0
        if @head.nil?
            @head = Node.new(score, title)
            return depth
        elsif
            @head.insert_node(score, title, depth)
        end
    end

    def include?(score) #skidoosh
        if @head.nil?
            return "Error"
        else
            @head.node_include?(score)
        end
    end

    def depth_of(score) #skidoosh
        depth = 0
        if @head.nil?
            return "Error"
        else
            @head.node_depth_of(score, depth)
        end
    end

    def min
        start = @head.score
        floor = 0
        if @head.nil?
            return "Error"
        else
            @head.node_min(start, floor)
        end
    end

    def max
        start = @head.score
        ceiling = 100
        if @head.nil?
            return "Error"
        else
            @head.node_max(start, ceiling)
        end
    end

#class end
end 