require 'thread'
#queues are the first in first out datastructure
#Ruby provides you with synchronised/thread-safe queues

testQueue = Queue.new
testQueue.enq(10)
puts "Enqueing 10"

testQueue.enq(20)
puts "Enqueing 20"

testQueue.enq(30)
puts "Enqueing 30"

while !testQueue.empty?
  popped = testQueue.deq
  puts "Popped :  " + popped.to_s
end