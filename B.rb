def valid?(h, n, a_arr)
  return false unless [h, n].all?{|obj| obj.is_a?(Integer)}
  return false unless a_arr.is_a?(Array)
  return false unless a_arr.all?{|obj| obj.is_a?(Integer)}
  return false if h < 1 || h > 10**9
  return false if n < 1 || n > 10**5
  return false if a_arr.any?{|num| num < 1 || num > 10**4}
  return false if a_arr.uniq != a_arr
  return false if n != a_arr.size
  true
end

def raccoon(h, n, a_arr)
  return nil unless valid?(h, n, a_arr)
  return "Yes" if a_arr.sum >= h
  "No"
end


#test
puts raccoon(10, 3, [4, 5, 6]) == "Yes"
puts raccoon(20, 3, [4, 5, 6]) == "No"
puts raccoon(210, 5, [31, 41, 59, 26, 53]) == "Yes"
puts raccoon(211, 5, [31, 41, 59, 26, 53]) == "No"
puts raccoon(1, 1, [1]) == "Yes"
puts raccoon(0, 1, [1]) == nil
puts raccoon(10**9, 1, [1]) == "No"
puts raccoon(11**9, 1, [1]) == nil
puts raccoon(1, 0, [nil]) == nil
#puts raccoon(1, 10**5, (1..10**5).to_a) #numが10**4を超えてしまうためn-10**5のテストはできない
puts raccoon(1, 11**5, [1]*11**5) == nil
puts raccoon(1, 1, [0]) == nil
puts raccoon(1, 1, [10**4]) == "Yes"
puts raccoon(1, 1, [11**4]) == nil
puts raccoon(1, 1, [1, 2]) == nil
puts raccoon(1, 2, [1, 1]) == nil
puts raccoon("a", 1, [1]) == nil
puts raccoon(1, "a", [1]) == nil
puts raccoon(1, 1, ["a"]) == nil

#all true