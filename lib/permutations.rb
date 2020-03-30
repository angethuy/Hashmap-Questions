# Accepts two strings as arguments and checks if they're permutations of each other.
# Permutations share the same letter counts between each other.
# Time: O(n), we iterate through three different collections of fixed size
# Space: O(n), we create a new hash 


def permutations?(string1, string2)
  hash = {}

  string1.chars.each do |letter|
    hash.has_key?(letter) ? hash[letter] += 1 : hash[letter] = 1
  end

  string2.chars.each do |letter|
    return false unless hash.has_key?(letter) && hash[letter] > 0 #quickly catch obvious fail cases 
    hash[letter] -= 1
  end

  hash.any? {|key, value| value > 0} ? false : true 
end