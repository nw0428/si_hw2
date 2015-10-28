# Add arrays, even if nested - Manuel Mendez
# Use recursion, three cases
def exec_sum(arr_item)

  # case 1: at the end of an array
  return 0 if arr_item == nil

  # case 2: a bare element
  return arr_item if arr_item.is_a? Numeric

  # case 3: a nested element
  sum_total = 0 # cum. variable must be outside of block's closure
  arr_item.each { |i| sum_total += exec_sum(i) }
  return sum_total
    
end

########### Our 'main' ############

my_arr = [1,2,3]
puts "the array is : " << my_arr.to_s
puts "the sum of the array of arrays is " << exec_sum(my_arr).to_s

my_arr = [1,[2,[3]]]
puts "the array is : " << my_arr.to_s
puts "the sum of the array of arrays is " << exec_sum(my_arr).to_s

my_arr = [1,2,3,[9,2,[1]],1,19,[1],85]
puts "the array is : " << my_arr.to_s
puts "the sum of the array of arrays is " << exec_sum(my_arr).to_s

20.times { print("_") }
puts " "
