def valid?(h, a)
  return false unless [h, a].all?{|obj| obj.is_a?(Integer)}
  return false if h < 1 || h > 10**4
  return false if a < 1 || a > 10**4
  true 
end

def serval(h, a)
  return nil unless valid?(h, a)
  cnt = 0
  while h > 0
    cnt += 1
    h = h - a
  end
  cnt
end


#test
puts serval(10, 4) == 3
puts serval(1, 10000) == 1
puts serval(0, 10) == nil
puts serval(10**4, 10**2) == 100
puts serval(11**4, 10**2) == nil
puts serval(2, 1) == 2
puts serval(2, 0) == nil
puts serval(2, 10**4) == 1
puts serval(2, 11**4) == nil
puts serval("a", 2) == nil 
puts serval(2, "a") == nil

#all true