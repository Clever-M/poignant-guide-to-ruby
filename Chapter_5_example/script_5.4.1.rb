# Inheritance is a handy concept in ruby, a class that inherits from another
# gets all methods and attributes from the super class, so if you need a similar
# class with another related class, you can create a new class that inherits
# from another class (and you won't need to define two things again [D.R.Y]).

class Person
  def initialize (name, age)
    @name = name
    @age = age
  end
  def laugh
    "hahahahahaha"
  end
  def name
    @name
  end
  def age
    @age
  end
end

class Father < Person
  def speak
    "Hello!"
  end
end

class Baby < Person
  def cry
    "bwwaaaaaaaa"
  end
end

baby = Baby.new("John", 1)

father = Father.new("Marc", 32)

puts "Father's name is #{father.name} and age is #{father.age}"

puts "Baby's name is #{baby.name} and age is #{baby.age}"

puts "Father laughter: #{father.laugh}"
puts "Baby's laughter: #{baby.laugh}"

puts "Father says: #{father.speak}"
puts "Baby cries: #{baby.cry}"

puts baby.class.superclass # returns the class a centain class inherits from

puts father.class.superclass


