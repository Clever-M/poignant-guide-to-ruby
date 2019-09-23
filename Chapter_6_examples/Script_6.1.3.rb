# What yield does is to execute a block attached to that given method
def yield_thrice
  yield
  yield
  yield
end

a = ['first, birth.', 'then, a life of flickering images.', 'and, finally, the end.']

yield_thrice { puts a.shift } # The shift method pops out the first element of
                              # a array and returns it.