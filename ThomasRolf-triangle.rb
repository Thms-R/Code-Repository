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
  breaks = [rand, rand]
  small_break=breaks.min
  big_break=breaks.max

  # Three sides
  side_a=small_break
  side_b=big_break-small_break
  side_c=1-big_break

  # order the sides once so we can use this going forward
  ordered_sides = [side_a, side_b, side_c].sort

  if ordered_sides[0] + ordered_sides[1] >= ordered_sides[2] #condition to be able to form a triangle
    proba=proba+1/n
  end
end

  puts ("The probability that you can form a triangle is #{proba}")

end


MonteCarloProba()
# Possible to choose the number of simulations n as an argument. Make sure to specify it with significant figures such as 1000.000 otherwise Ruby will round the result.
