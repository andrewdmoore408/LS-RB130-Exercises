=begin

Count Items

Write a method that takes an array as an argument, and a block that returns true or false depending on the value of the array element passed to it. The method should return a count of the number of times the block returns true.

You may not use Array#count or Enumerable#count in your solution.
=end

# def count(collection, &block)
#   num_true = 0

#   collection.each do |item|
#     num_true += 1 if block.call(item)
#   end

#   num_true
# end

# Further exploration
def count(collection)
  num_true = 0

  for item in collection
    num_true += 1 if yield(item)
  end

  num_true
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2