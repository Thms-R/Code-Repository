#################################################
=begin
@Author: Thomas Rolf
Coding Assignment: probability to be able to form a triangle if you randomly break a stick in 3 pieces.
=end
#################################################


# I assumed that a triangle looking like a straight line is an edge case of a triangle.


def MonteCarloProba(n=100000.000)
# n number of simulations. The best would then be to control the convergence by plotting the probability against n. Default value for n is 100000.

proba = 0

=begin
Stick is represented by the [0,1] segment.
Random breaks at x and y determined by random numbers between 0 and 1.
=end

for i in 0..n
  x=rand()
  y=rand()  
  
  # Three sides
  a=[x,y].min
  b=[x,y].max-[x,y].min
  c=1-[x,y].max 
    
    if a<=b+c && b<=a+c && c<=a+b #condition to be able to form a triangle
    proba=proba+1/n
    end
end

  puts ("The probability that you can form a triangle is #{proba}")
  
end


MonteCarloProba()
# Possible to choose the number of simulations n as an argument. Make sure to specify it with significant figures such as 1000.000 otherwise Ruby will round the result.