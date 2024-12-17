require "rubocop"
require_relative "node"

class Linkedlist
  attr_reader :head, :tail

  def initialize
    @head = nill
    @tail = nill
    @count = 0
  end

  def append(value)
    node = Node.new(value) # remove
    @count += 1
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def prepend(value)
    node = Node.new(value) # remove
    @count += 1
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def size
    @count
  end
end
