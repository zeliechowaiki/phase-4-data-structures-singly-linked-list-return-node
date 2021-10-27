require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  # Solution 1: based on determining the length of the list
  def nth_from_end(n)
    # determine the length of the list
    length = 0
    node = head
    until node.nil?
      node = node.next_node
      length += 1
    end

    # exit early and return nil if n is not valid
    return nil if n < 1 || n > length

    # iterate based on the length of the list to find the node
    # For example, if n = 2 and length is 4, length - n + 1 == 1
    # 1 -> 2 -> 3 -> 4
    #      i
    node = head
    i = 1
    while i < length - n + 1
      node = node.next_node
      i += 1
    end

    # return the node's value
    node.value
  end

  # Solution 2: using two pointers
  # def nth_from_end(n)
  #   # exit early if n is less than 1 or if the list is empty
  #   return nil if head.nil? || n < 1

  #   # create two pointers
  #   slow = head
  #   fast = head
    
  #   # move the fast pointer n nodes from the head
  #   # slow will stay at the beginning of the list, so it will be n steps behind fast
  #   # For example, if n = 2:
  #   # 1 -> 2 -> 3 -> 4
  #   # s         f
  #   i = 0
  #   while i < n
  #     # exit early if we go beyond the end of the list (n is too large)
  #     return nil if fast.nil? 

  #     fast = fast.next_node
  #     i += 1
  #   end

  #   # now move fast pointer to the end of the list, one step at a time
  #   # and also move slow one step at a time
  #   # so when fast reaches the end of the list, slow will be n steps behind
  #   # 1 -> 2 -> 3 -> 4
  #   #      s         f
  #   until fast.nil?
  #     slow = slow.next_node
  #     fast = fast.next_node
  #   end

  #   # return the value of slow
  #   slow.value
  # end

end
