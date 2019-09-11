# The following class (each instance) represents a Lottery ticket with 3
# distinct numbers from 1 to 25.

class LotteryTicket

  NUMERIC_RANGE = 1..25 # Class constant

  attr_reader :picks, :purchased # This methods indicates that I can read those
                                 # variables outside the class. see Important
                                 # Note 1(IN 1)

  def initialize( *picks )
    if picks.length != 3 # A person can't have more than 3 numbers
      raise ArgumentError, "three numbers must be picked"
    elsif picks.uniq.length != 3 # A person can't repeat numbers
      raise ArgumentError, "the three picks must be different numbers"
    elsif picks.detect { |p| not NUMERIC_RANGE === p } # Check if one of the three
                                                       # numbers are not between 1
                                                       # and 25 (IN 3)
      raise ArgumentError, "the three picks must be numbers between 1 and 25"
    end
    @picks = picks # copies the array
    @purchased = Time.now #saves the time the class was instantiated
                          #(which means bought by the customer)
  end
end

ticket = LotteryTicket.new( rand( 25 ) + 1, rand( 25 ) + 1, rand( 25 ) + 1 )
  # Throws an error if the two numbers are identical.

p ticket.picks # Since I used attr_reader,
               # I can't do this -> ticket.picks = [12, 22, 3]



# IN 1: symbols inside attr_reader means that you create get methods
# For example
#   attr_reader :batata is equivalent to: def batata
#                                           @batata
#                                         end

# IN 2: you also have attr_writer and attr_accessor
#   attr_writer :batata is equivalent to: def batata=(value)
#                                           @batata = value
#                                         end
#   attr_accessor creates both get and set methods (no need for an example,
#   you got it, Clever).
#   attr_accessor is the equivalent of "public DataType attribute_name { get; set; }"
#   in C#.

# IN 3: Array.detect { |item| -> condition <-} returns the first item that
# obeys the contidion inside the block.
