require "rubocop"
require_relative "node"

class LinkedList
  include Enumerable
  attr_reader :count

  def initialize
    @head = nil
    @tail = nil
    @count = 0
  end

  def append(value)
    @node = Node.new # remove
    @node.value = value
    @count += 1
    if @head.nil?
      @head = @node
      @tail = @node
    else
      @node.next_node = @head
      @head = @node
    end
  end

  def prepend(value)
    @node = Node.new # remove
    @node.value = value
    @count += 1
    if @head.nil?
      @head = @node
      @tail = @node
    else
      @tail.next_node = @node
      @tail = @node
    end
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index)
    i = 0
    while @node
      return puts @node.value if i == index

      i += 1
    end
  end

  def each
    return nil if @head.nil?

    @node = @head
    until @node.nil?
      yield @node
      @node = @node.next_node
    end
  end

  def pop
    return nil if @head.nil?

    @node = @head
    @head = @head.next_node
    @node.value
  end

  def contains?(value) # transform value to string
    each { |node| return "Yes" if node.value == value }
  end

  def find(value)
    i = 0
    each do |node|
      return i if node.value == value

      i += 1
    end
  end

  def to_s
    each do |node|
      return nil if node.nil?

      print " (#{node.value}) =>" # is returning object inspection as the last printed element
    end
  end

  def inspect
    "nil"
  end
end
