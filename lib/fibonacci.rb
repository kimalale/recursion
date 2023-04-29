def fibonacci(n)
  if n == 1 || n <= 0
    return n
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

fibonacci_sequence = []

1..8.times do |number|
  fibonacci_sequence << fibonacci(number)
end

print fibonacci_sequence
