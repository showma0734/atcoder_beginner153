def valid?(n, k, h_arr)
  return false unless [n, k].all?{|obj| obj.is_a?(Integer)}
  return false unless h_arr.is_a?(Array)
  return false unless h_arr.all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 2*10**5
  return false if k < 0 || k > 2*10**5
  return false if h_arr.any?{|num| num < 1 || num > 2*10**5}
  return false if n != h_arr.size
  true
end

def fennec(n, k, h_arr)
  return nil unless valid?(n, k, h_arr)
  return h_arr.sum if k == 0 
  h_arr = h_arr.sort.reverse
  h_arr = h_arr[1..-k]
  h_arr.sum
end

#test
puts fennec(3, 1, [4, 1, 5]) == 5
puts fennec(8, 9, [7, 9, 3, 2, 3, 8, 4, 6]) == 0
puts fennec(3, 0, [1000, 1000, 1000]) == 3000
puts fennec(1, 1, [1]) == 0
puts fennec(0, 1, [nil]) == nil
puts fennec(2*10**5, 1, [1]*2*10**5) == 199999
puts fennec(2*11**5, 1, [1]*2*11**5) == nil
puts fennec(1, -1, [1]) == nil
puts fennec(1, 2*10**5, [1]) == 0
puts fennec(1, 2*11**5, [1]) == nil
puts fennec(1, 1, [0]) == nil
puts fennec(1, 1, [2*10**5]) == 0
puts fennec(1, 1, [2*11**5]) == nil
puts fennec(1, 1, [1,2]) == nil
puts fennec(2, 1, [1]) == nil
puts fennec("a", 1, [1]) == nil
puts fennec(1, "a", [1]) == nil
puts fennec(1, 1, ["a"]) == nil
#all true



