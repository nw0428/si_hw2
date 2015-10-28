# Palindrome - Manuel Mendez
# Without cheating, i.e. not comparing to the result of .reverse :)
def is_pal(word)

  # we arbitrarily decide that the empty string is a palindrome
  # and that a one letter word is also a palindrome
  return true if word == nil
  return true if word.length <= 1

  # two letters are palindromes iff they are the same
  return true if word[0] == word[1] 

  # figure out how many checks
  num_checks = word.length / 2
  for i in 1..num_checks
    puts word[i-1] << " vs. " << word[word.length - i ]
    return false if word[i-1] != word[word.length - i ]     
  end

  return true    
end

########### Our 'main' ############

File.open(ARGV.first, "r") do |f|
  f.each_line do |l|

    # read each line 
    puts "read: " << l.strip!

    # now let's do the actual work
    puts "a palindrome? " << is_pal(l).to_s

    # some pretty printing
    5.times { print("-") }
    puts ("-");

  end #each_line
end #File.open

30.times { print("_") }
puts " "
