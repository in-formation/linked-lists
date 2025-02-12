require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) where 1 is the one node created
  # Space complexity - O(1) where 1 is the one node created in space
  def add_first(data)
    @head = Node.new(data, head)
  end

  # Time complexity - O(1) because it is grabbing the first node in the list
  # Space complexity - O(1) because it is returning one node
  def get_first
    return nil if head.nil?
    return @head.data
  end

  # Time complexity - O(n) where n is the length of the linked list
  # Space complexity - O(1) because only a single number is being returning, the length of the list
  def length
    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n) where n is the length of the entire list
  # Space complexity - O(1) because you are adding one node
  def add_last(data)
    current = @head

    if current.nil?
      add_first(data)
      return
    end

    until current.next == nil
      current = current.next
    end
    current.next = Node.new(data)
  end

  # Time complexity - O(n) where n is the length of the entire list
  # Space complexity - O(1) because you are returning informatio on one node
  def get_last
    current = @head
    until current.next == nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n) where n is the length of the list, in worst case scenario
  # Space complexity - O(1) because only single node data is returned
  def get_at_index(index)
    current = @head
    if current.nil?
      return nil
    end

    i = 0
    while i != index
      i += 1
      current = current. next
    end

    return current.data
  end
end
