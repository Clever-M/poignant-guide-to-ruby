class LotteryTicket

  NUMERIC_RANGE = 1..25

  attr_reader :picks, :purchased

  def initialize( *picks )
    if picks.length != 3
      raise ArgumentError, "three numbers must be picked"
    elsif picks.uniq.length != 3
      raise ArgumentError, "the three picks must be different numbers"
    elsif picks.detect { |p| not NUMERIC_RANGE === p }
      raise ArgumentError, "the three picks must be numbers between 1 and 25"
    end
    @picks = picks
    @purchased = Time.now
  end

  # The new method below creates 3 numbers automatically.
  def self.new_random
    new( rand( 25 ) + 1, rand( 25 ) + 1, rand( 25 ) + 1 )
  rescue ArgumentError # if one of the numbers are equal, then the methods
    retry              # will be retried.
  end

  def score( final ) #copares a ticket with another one.
    count = 0
    final.picks.each do |note|
      count +=1 if picks.include? note
    end
    count
  end
end

class LotteryDraw
  @@tickets = {} # That saves the ticket bought by customers and their numbers
  def LotteryDraw.buy( customer, *tickets )
    unless @@tickets.has_key?( customer ) # if the customer ins't registered
      @@tickets[customer] = []            # it create one.
    end
    @@tickets[customer] += tickets # Registers the tickets bought by the users.
  end
end

class << LotteryDraw # The << operator adds the following method(s) to a previous
  def play           # defined class
    final = LotteryTicket.new_random # Creates three random numbers.
    winners = {} # List of buyers (that have scored)
    @@tickets.each do |buyer, ticket_list|
      ticket_list.each do |ticket|
        score = ticket.score( final )
        next if score.zero? # Goes to the next ticket if score is 0
        winners[buyer] ||= [] # If has scored and isn't in the winners list, adds it.
        winners[buyer] << [ ticket, score ] # Saves the buyers and their scores
      end
    end
    @@tickets.clear
    winners
  end
end

# Creating users

LotteryDraw.buy 'Yal-dal-rip-sip',
    LotteryTicket.new( 12, 6, 19 ),
    LotteryTicket.new( 5, 1, 3 ),
    LotteryTicket.new( 24, 6, 8 )

# Comparing two tickets

ticket1 = LotteryTicket.new( 22, 14, 11)

ticket2 = LotteryTicket.new( 14, 21, 9 )

puts ticket1.score( ticket2 ) # => should return 1

# The score method can be used to copare a given ticket with a random
# 'winner' ticket (in order to check who won the lottery).
