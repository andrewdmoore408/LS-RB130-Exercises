=begin

Find Missing Numbers

Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

=end

# def missing(arr)
#   return [] if arr.size < 2

#   missing = []

#   (arr.first...arr.last).each do |num|
#     missing << num unless arr.include?(num)
#   end

#   missing
# end

# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []
# p missing([-5, -1, 0, 4, 5]) == [-4, -3, -2, 1, 2, 3]

# Further exploration: solving this without a method that requires a block
# I believe while is a statement which sets up a loop and not an actual method

def missing(arr)
  return [] if arr.size < 2

  missing = []

  num = arr.first

  while num < arr.last do
    num += 1
    missing << num unless arr.include?(num)
  end

  missing
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
p missing([-5, -1, 0, 4, 5]) == [-4, -3, -2, 1, 2, 3]