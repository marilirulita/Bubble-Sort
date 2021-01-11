#Build a method #bubble_sort that takes an array and returns a sorted array
#create a variable for store array to test
test_array = [3, 4, 5, 9, 8, 2]

#create method
def bubble_sort(test)
  x = test.length-2
  m = 0
  for i in 0..x
    #1.1 if the number i is higher than i+1, then change site, else continue checking
    p test[i]
    p test[i+1]
    if test[i] > test[i+1]
      m = test[i]
      test[i] = test[i+1]
      test[i+1] = m
    end
    p test
  end
  #for each cicle i should stop looking for the last item = arr.length - 1
    #I need to compare the i number in array with the next
end

bubble_sort(test_array)
