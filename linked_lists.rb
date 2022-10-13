class LinkedList

  attr_reader :head

  def intialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      tail.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    Node.total_number_of_nodes
  end

  def tail
    current_node = @head
    loop do
      break if current_node.next_node.nil?

      current_node = current_node.next_node
    end
    current_node
  end

  def at(index)
    count = 0
    current_node = @head
    loop do
      break if count == index || current_node.nil?

      current_node = current_node.next_node
      count += 1
    end
    current_node
  end

  def pop
    return nil if @head.nil?
    
    count = 0
    current_node = @head
    loop do
      break if current_node.next_node.nil?

      current_node = current_node.next_node
      count += 1
    end
    at(count-1).next_node = nil
    current_node
  end

  def contains?(value)
    contained = false
    current_node = @head
    loop do
      contained = true if current_node.value == value
      break if current_node.next_node.nil? || current_node.value == value

      current_node = current_node.next_node
    end
    contained
  end
end


class Node
  attr_accessor :next_node 
  attr_reader :value
  @@number_of_nodes = 0

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
    @@number_of_nodes += 1
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
p lista.pop

lista.append(1)
lista.append(2)
lista.append(3)
lista.prepend(0)

p lista.size
p lista.head
p lista.tail
p lista.at 2

p lista.pop
p lista.contains?(1)
p lista