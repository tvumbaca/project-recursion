# Fibonacci sequence method using iteration

def fibs(n)
  a = 0
  b = 1
  arr = []
  n.times { 
    c = a + b 
    arr << a
    a = b
    b = c
  }
  arr
end

p fibs(6)
# => [0, 1, 1, 2, 3, 5]

# Fibonacci sequence method using recursion

def fibs_rec(n, arr=[0, 1])
  return arr[-2] if n == 1
  return arr if n == 2
  arr << arr[-2] + arr[-1]
  fibs_rec(n-1, arr)
  return arr
end

p fibs_rec(8)
# => [0, 1, 1, 2, 3, 5, 8, 13]
