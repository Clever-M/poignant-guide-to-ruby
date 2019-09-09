# The code above is modifying a core class and it is not good practice,
# but ruby does allow you to do that.

class String # We are modifying the core String class

  # The parts of my daughter's organ
  # instructor's name.
  @@syllables = [                     # Now every String has this variable.
    { 'Paij' => 'Personal',
      'Gonk' => 'Business',
      'Blon' => 'Slave',
      'Stro' => 'Master',
      'Wert' => 'Father',
      'Onnn' => 'Mother' },
    { 'ree'  => 'AM',
      'plo'  => 'PM' }
  ]

  # A method to determine what a
  # certain name of his means.
  def name_significance               # You can use this method with any String.
    parts = self.split( '-' )
    syllables = @@syllables.dup
    signif = parts.collect do |p|
      syllables.shift[p]
    end
    signif.join( ' ' )
  end
end

puts "Paij-ree".name_significanc
