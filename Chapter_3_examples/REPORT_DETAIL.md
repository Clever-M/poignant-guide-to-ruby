# PARTS OF RUBY

## Variables

```ruby
variable = 123               # It stores data

@instace_variable = 'batata' # Can be access only inside a instance

@@class_variables = 4.5      # Shared among instances of a given class
```

## Numbers

### Integers can be positive, negative.

```ruby
example1 = 1000000

example2 = 1_000_000 # You can use underscores to indicate thousands
```

### Floats

Floats are decimal numbers

```ruby
decimal_number = 10.5

scientific_notation = 12.043e-04
```

## Strings

Strings are group of characters.
Double quotes strings can be interpolated, double quotes can't.
```ruby
single_quote = 'batata'

double_quote = "cenoura"
```

## Symbols

Symbols are words that look like variables, they always start with a colon.

They are smaller than strings, so they can be used when a string is needed but
won't be displayed for the user.

```ruby
symbol = :batata
```

## Constants

Constants are the same as variables, but they should not be modified.
To declare constants, the first letter needs to be capitalized, although it is
good practice to use uppercase instead.

```ruby
Bad  = 'This works but it is bad practice'
GOOD = 'This is how all constants should be declared'
```
## Methods

If variables and constants are nous, methods are verbs. They execute actions.
They are attached to a variable by a dot.

```ruby
door.open

front_door.is_open?
```
Methods might require arguments. For example, you can pass a '-' string to say
to the split method what is should consider as a criterion to split the string.

```ruby
'batata_de_venus'.split('_') # => ['batata', 'de', 'venus']
```
## Class Methods

Class Methods are functions that exist inside a class. To call a method you need
to use double colon.

```ruby
Door::new( :oak )
```
## Global variables

Global variables can be used anywhere through out your program. They are
declared witha dolar sign.

```ruby
$global_var = 'this string can be used anywhere in the program'
```

## Instance varialbles

Instance variables are variables that generally define an attribute of a class.
They are created everytime a class is instatiated.
```ruby
class Example
  def initialize(number_of_people)
    @number_of_people = number_of_people
  end

  def number_of_people
    @number_of_people
  end
end

example = Example.new(223)
puts example.number_of_people # -> that will print the value of the class variable.
```

## Class variables

Diferently from instance variables, class variables are shared by all instaces
of a given class. If one instance modify a class variable, it will be modified
in all other instances.

```ruby
class Example
  def initialize(word)
    unless defined? @@number_of_instances
      @@number_of_instances = 0
    end
    @@number_of_instances +=1
    @word = word
  end

  def number_of_instances
    @@number_of_instances
  end

  def word
    @word
  end
end

example1 = Example.new('batata')

puts "There are #{example1.number_of_instances} Example instances"
puts "Example 1 word #{example1.word}"

example2 = Example.new('apple')
puts "There are #{example2.number_of_instances} Example instances"
puts "Example 2 word #{example2.word}"

# Now you can see that the number of instances will be the same for both
# instances, but the word will be different.
puts "There are #{example1.number_of_instances} Example instances"
puts "Example 1 word #{example1.word}"
```

## Blocks

Block are codes surrounded by curly braces. With them you can pass a set of
instructions around your program by using blocks.
Some methods can receive blocks
```ruby
2.times {
  print "Yes, I've used chunky bacon in my examples, but never again!"
}
```

Block2.times {
  print "Yes, I've used chunky bacon in my examples, but never again!"
}

Curly braces can the traded for do-end key words. do-end are used when the
block needs to have more than one statement.
```ruby
loop do
  print "Much better."
  print "Ah.  More space!"
  print "My back was killin' me in those crab pincers."
end
```

## Block variables

Block variables are variables that are used inside blocks. They are initialized
between pipes.
```ruby
{ |x,y| x + y }
```

## Ranges

Ranges are two values that represent a set of value surround by parenthesis.
They can either use two or three dots. When using three dots, the range doesn't
include the last number of the range.
```ruby
(1..10) # 10 is included
(1...10) # 10 is not included
```

## Arrays

Are sets of data. Although it can be used different data types inside it, it's
good practice to use only one data type.

```ruby
array_of_numbers = [1, 2, 3]

array_of_strings = ['knee', 'deep', 'in', 'the', 'dead']
```

# Hashes

Hashes are dictionary surrounded by curly braces. The words before => are
the keys, and the one after it are the definitions.

```ruby
{ 'name' => 'Peter', 'profession' => 'lion tamer', 'great love' => 'flannel' }

# Symbols are commonly used fo the keys, although you can use an ordinary string

{ :name => 'Peter', :profession => 'lion tamer', :great love => 'flannel' }

# The sintaxe above is too wordy, so it's better if you use the following one:

{ name: 'Peter', profession: 'lion tamer', great love: 'flannel' }
```

## Regular Expression (RegEx)

Regular expressions are set of caracteres between slashes. They are used to find
parterns on strings

```ruby
regex1 = /ruby/, /[0-9]+/
regex2 = /^\d{3}-\d{3}-\d{4}/
```
