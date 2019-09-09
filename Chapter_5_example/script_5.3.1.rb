# The following method deletes texts inside parenthesis.

def wipe_mutterings_from1( sentence ) # 1. Get a sentence
  while sentence.include? '('        # 2. Checks if the sentence has any (
    open = sentence.index( '(' )     # 3. Store the index of the first occurrence of (
    close = sentence.index( ')', open ) # 4. Stores the first ocurrence of ')' after a ocurrence of '('
    sentence[open..close] = '' if close # 5. if closes has a value then the part os the sentence
  end                                   # between the index in open and the index in close is removed
end

what_he_said = "But, strangely (em-pithy-dah),
  I learned upon, played upon (pon-shoo) the
  organs on my home (oth-rea) planet."
wipe_mutterings_from1( what_he_said )

puts what_he_said

# The function above will work well for data of the type string. But it will
# fail if we try to pass other type of data. This will throw a error message
# (automatically). We can create our own message that will make more sense
# for the user.

def wipe_mutterings_from2( sentence )
  unless sentence.respond_to? :include? # respond_to? ensure that a data type has a centain method.
    raise ArgumentError,                # respond_to? works with both strings and symbols.
      "cannot wipe mutterings from a #{ sentence.class }"
  end
  while sentence.include? '('
    open = sentence.index( '(' )
    close = sentence.index( ')', open )
    sentence[open..close] = '' if close
  end
end

bad_data = 5

#puts wipe_mutterings_from (bad_data) # Response: cannot wipe mutterings from a Integer (ArgumentError)
                                     # comment this line to run the script.


# The two methods above are passing the variable by reference, which modifies it
# inside the function. To pass the value, you need to use the dup method. This
# the method variable will be a copy of the passed variable and not a pointer.

def wipe_mutterings_from3( sentence )
  unless sentence.respond_to? :include?
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end
  sentence = sentence.dup # Sentence will now only be modified inside the method
  while sentence.include? '('
    open = sentence.index( '(' )
    close = sentence.index( ')', open )
    sentence[open..close] = '' if close
  end
  sentence
end

puts '____________________________________________________________________'
something_said = "A (gith) spaceship."
puts wipe_mutterings_from3( something_said )
puts
puts something_said

# Doesn't modify the variable

puts wipe_mutterings_from2( something_said ) # won't return anything
puts
puts something_said
# Modifies the variable

# All methods above work fine. Except that they all can end up in a enternal loop.
# If we pass a string with a open parenthesis but no closing parenthesis, this
# runtime error will occur. So it easy to get out of hand by using while-until
# loops. So I need to be careful. One way of solving this problem (and simplify
# this function) is to use .gsub method.

def wipe_mutterings_from4( sentence )
  unless sentence.respond_to? :gsub
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end
  sentence.gsub( /\([-\w]+\)/, '' ) # Here there's no need to use dup 'cause
end                                 # already creates a copy of the variable

puts '__________________________refactored method (.gsub)____________________________'
something_said = "A (gith spaceship."
puts wipe_mutterings_from4( something_said )

# Now, an enternal loop won't happen.
