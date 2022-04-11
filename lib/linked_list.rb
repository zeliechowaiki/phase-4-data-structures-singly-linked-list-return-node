require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end


  def nth_from_end(n)

    length = 1

    last_node = head
    while last_node && last_node.next_node
      last_node = last_node.next_node
      length +=1
    end

    if (n > length) || (n <= 0) then return nil
    else
    index = length - n
      node = head
      index.times do
        node = node.next_node
      end
      if node then return node.value
      end
    end

  end

end

# binding.pry