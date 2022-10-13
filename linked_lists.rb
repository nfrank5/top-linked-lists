class LinkedList

  def intialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      last = @head.look_for_last_node
      last.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    Node.total_number_of_nodes
  end
end


class Node
  attr_accessor :next_node

  @@number_of_nodes = 0

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
    @@number_of_nodes += 1
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

  def self.total_number_of_nodes
    @@number_of_nodes
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
lista.prepend(0)
p lista.size