require "rubocop"
require_relative "node"

class Linkedlist
  include Enumerable
  attr_reader :head, :tail
  attr_accessor :count

  def initialize
    @head = nill
    @tail = nill
    @count = 0
  end

  def append(value)
    @node = Node.new(value) # remove
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
    @node = Node.new(value) # remove
    @count += 1
    if @head.nil?
      @head = @node
      @tail = @node
    else
      @tail.next_node = @node
      @tail = @node
    end
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
      yield
      @node = @node.next_node
    end
  end

  def pop
    @head = nil
  end

  def contains?(value)
    self.each { |node| return node if node.value == value } # rubocop:disable Style/RedundantSelf
  end

  def find(value)
    i = 0
    self.each do |node| # rubocop:disable Style/RedundantSelf
      return i if node.value == value

      i += 1
    end
  end

  def to_s
    self.each do |node| # rubocop:disable Style/RedundantSelf
      print "(#{node}) =>"
      return nil if node.nil? # optional?
    end
  end
end
