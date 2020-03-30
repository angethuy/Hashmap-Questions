# Takes two integer arrays as arguments and returns a new array of their intersecting numbers.
#Time complexity: O(n), worse case scenario we iterate over every item in both lists
#Space complexity: O(n), creating a new hash and a new array
def intersection(list1, list2)
  integer_hash = {}
  
  list1.each do |int|
    integer_hash[int] = 1
  end

  intersection = []
  list2.each do |int|
    intersection << int if integer_hash.has_key?(int)
  end

  return intersection
end