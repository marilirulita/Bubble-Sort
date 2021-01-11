# create a variable for store array to test
test_array = [3, 4, 5, 9, 8, 2]
# create method
def bubble_sort(test)
  # variable to save element to change
  m = 0
  # create a loop for check n times the array
  test.length.times do
    # I need to compare the i number in array with i+1
    (0..test.length - 2).each do |i|
    # if the number i is higher than i+1, then switch places, and continue checking
      next unless test[i] > test[i + 1]
        m = test[i]
        test[i] = test[i+1]
        test[i+1] = m
      end
  end
  test
end

print bubble_sort(test_array)

def bubble_sort_by(test)
  # variable to save element to change
  m = 0
  # create a loop for check n times the array
  test.length.times do
    # I need to compare the i number in array with i+1
    for i in 0..test.length-2
    # compare element one to second, if difference is positive then switch places, and continue checking
    if yield(test[i], test[i+1]).positive?
      m = test[i]
      test[i] = test[i+1]
      test[i+1] = m
    end
    end
  end
  test
end

test_arra = bubble_sort_by(["hi", "hey", "hello"]) do |left,right|
  left.length - right.length
end

print test_arra
