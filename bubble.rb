#Build a method #bubble_sort that takes an array and returns a sorted array
#create a variable for store array to test
test_array = [3, 4, 5, 9, 8, 2]
test_array2 = ["a", "c", "b"]

#create method
def bubble_sort(test)
  x = test.length-2
  m = 0
  test.length.times do
    #I need to compare the i number in array with the next
    for i in 0..x
    #if the number i is higher than i+1, then change site, else continue checking
    if test[i] > test[i+1]
      m = test[i]
      test[i] = test[i+1]
      test[i+1] = m
    end
    end
  end
  p test
end

bubble_sort(test_array)
