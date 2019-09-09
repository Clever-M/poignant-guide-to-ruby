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
## Class Methods (todo)
