# Block scopes are more flexible, they can reconize varibles
# declared outside of the block and modify them.

puts "EXAMPLE 1\n\n"
verb = 'rescued'
word_number = 0
['sedated', 'sprinkled', 'electrocuted'].
each do |verb|
  word_number += 1
  puts "Dr. Cham " + verb + " his niece Hannah. Number: #{word_number}"
end

puts "Finally, Dr. Cham " + verb + " his niece Hannah. Number: #{word_number}"

puts '_____________________________________________________'

# If a variable that is outside of the block has the same name of a block
# variable, only the block variable will be altered while the one outside
# the block scope will remain untouched.

puts "EXAMPLE 2 \n\n"
verb = 'rescued'
['sedated', 'sprinkled', 'electrocuted'].
each do |verb|
  puts "Dr. Cham " + verb + " his niece Hannah."
end
puts "Finally, Dr. Cham " + verb + " his niece Hannah."

puts '_____________________________________________________'

# Yes, a block can see variables that are out side the block, but once a
# is declared inside it, it cannot be seen by the code outside the block.
# Thid third example will thow an error.

puts "EXAMPLE 3 \n\n"
['sedated', 'sprinkled', 'electrocuted'].
each do |verb|
  puts "Dr. Cham " + verb + " his niece Hannah."
end
puts "Finally, Dr. Cham " + verb + " his niece Hannah."

#This code is executable if you comment the third example.
