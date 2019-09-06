# A class is nothing but a definition of an object. It is not the object itself.
# The class variables are also called attribute and they can store any kind of
# data. However, most often it is store data about the object the class is
# representing.

class WishMaker
  def initialize # As soon as a class is instaciated, the initialize method runs (constructor)
    @energy = rand( 6 ) # -> Choses a random number between 0 and 5.
    @granted = []
  end
  def grant( wish )
    if wish.length > 10 or wish.include? ' '
      raise ArgumentError, "Bad wish."
    end
    if @energy.zero?
      raise Exception, "No energy left."
    end
    @energy -= 1
    @granted << wish
  end
  def wish_granted # Why is this method needed? Because without it, I don't have
    @granted       # access to the class variable (attribute) @granted.
  end
end

wish_maker = WishMaker.new # This is an instance, or the object itself.

wish_maker.grant('batata')
wish_maker.grant('uva')
wish_maker.grant('melao')

puts 'the wish(es) below were granted'
wish_maker.wish_granted.each do |wish|
  puts wish
end

# OBS 1: everything in ruby is a class. You can use the key word class to find
# out which class is an object from, some examples goes down below.

puts "integer class #{1.class}"
puts "string class #{'batata'.class}"
puts "wish maker class #{wish_maker.class}"


# This is a class made by the author, and originally it requires a 'endertromb'
# class. However, since reader don't have access to it, I just edited it a
# little bit.

# Some interesting commands
Object::constants # Shows all the top level constants, including method names
                # that are loaded into ruby at any time.

WishMaker::methods # Lists methods inside a centain class. Including the ones
                   # that come with Ruby.

# Obs 2: Class variables (@@batata) are a bit unusual cause a method can be redefined
# or written to show this information. They only should be used if you are sure a data
# needs to be shared through all objects.


