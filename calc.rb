sum = 0

def fibonacci(n)
  if n <= 1 
    return  n  
  else
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end
end 

i = 0

while i < 33
    if (fibonacci(i) % 2) == 0
    sum += fibonacci (i)
  end
    i = i + 1
end

puts sum
