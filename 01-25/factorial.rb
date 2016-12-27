require 'awesome_print'

def factorial(n)
  if (n>2)
    return n * factorial(n-1)
  elsif (n == 2)
    return 2
  elsif (n == 1)
    return 1
  end
end
