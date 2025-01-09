require_relative "lib/linkedlist"
list = LinkedList.new

list.append("dog")
list.append("cat")
list.append("parrot")
list.append("hamster")
list.append("snake")
list.append("turtle")
list.prepend("dinosaur")

puts list
