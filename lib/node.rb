class Node
    attr_accessor :score, :title, :left, :right

    def initialize(score, title)
        @score = score
        @title = title
        @left = nil
        @right = nil
    end

def insert_node(score, title, depth)
    if (@left.nil?)  && (score < @score)
        @left = Node.new(score, title)
        depth += 1
    elsif (@right.nil?) && (score > @score)
        @right = Node.new(score, title)
        depth +=1 
    elsif score < @score
        depth += 1
        @left.insert_node(score, title, depth)
    elsif score > @score
        depth += 1
        @right.insert_node(score, title, depth)
    end
    return depth
end

def node_include?(score)
    if @score == score
        return true
    elsif (score < @score) && (@left != nil)
        @left.node_include?(score)
    elsif  (score > @score) && (@right != nil)
        @right.node_include?(score)
    else
        return false
    end
end

def node_depth_of(score, depth)
    if @score == score
        return depth
    elsif (score < @score) && (@left != nil)
        depth +=1
        @left.node_depth_of(score, depth)
    elsif  (score > @score) && (@right != nil)
        depth += 1
        @right.node_depth_of(score, depth)
    else
        return depth
    end
end

def node_min(start, floor)
    if (start > floor) && (@left != nil)
        start = @left.score
        @left.node_min(start, floor)
    else
        return min_node = {@title => @score}
    end

end

def node_max(start, ceiling)
    if (start < ceiling) && (@right != nil)
        start = @right.score
        @right.node_max(start, ceiling)
    else
        return max_node = {@title => @score}
    end

end

#class end
end