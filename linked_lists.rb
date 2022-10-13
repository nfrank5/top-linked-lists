class LinkedList

  def intialize
    @nodes = nil
  end

  def append(value)
    if @nodes.nil?
      @nodes = Node.new(value)
    else
      last = @nodes.look_for_last_node
      last.next_node = Node.new(value)
    end
  end

end


class Node
  attr_accessor :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def look_for_last_node
    p self
    p self.next_node
    gets
    if self.next_node != nil
      self.next_node.look_for_last_node
    else
      self
    end
  end

end



#e = Node.new(3)
#w = Node.new(2,e)
#q = Node.new(1,w)
#p q.look_for_last_node


lista = LinkedList.new
lista.append(1)
lista.append(2)
lista.append(3)

p lista