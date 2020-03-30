# Takes a string as an argument and checks if it could be a valid palindrome.
# Valid palindromes have a maximum of one letter that appears an odd number of times.
# Time: O(n), we iterate over the string once and over our hash once 
# Space: O(n), worse case scenario we create a new hash collection that's as "large" as our string

def palindrome_permutation?(string)
  hash = {}

  string.chars.each do |letter|
    hash.has_key?(letter) ? hash[letter] += 1 : hash[letter] = 1
  end

  return hash.select{ |k,v| v.odd? }.size <= 1 
  
end