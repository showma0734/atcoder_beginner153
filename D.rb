def valid?(h)
  return false unless h.is_a?(Integer)
  return false if h < 1 || h > 10**12
  true  
end

def caracal(h)
  return nil unless valid?(h)
  cnt = 0
  n = 1
  while h >= 1 
    cnt += n
    h /= 2
    n *= 2
  end
  cnt
end

#test
puts caracal(2) == 3
puts caracal(4) == 7
puts caracal(1) == 1
puts caracal(0) == nil
puts caracal(10**12) == 1099511627775
puts caracal(11**12) == nil
puts caracal("a") == nil
#all true
