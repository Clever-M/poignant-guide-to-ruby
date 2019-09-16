# Floating little leaves of code

## Ruby parts
Ruby have two parts

1. Defining things: you are always defining a variable, class or method;
2. putting things into action: you do actions with those.

## using methods

Methods always return something, you can either use this information or ignore it.

```ruby
response = 'leaves trees wood'.split(' ') #-> the array returned will be saved
                                          # into the variable 'response'
'leaves trees wood'.split(' ') # The array returned won't be saved.
```

## Booleans and nil

nil is a value in ruby that represents emptiness.

The two boolean values are true and false.

## if and unless

When if is used, is executes the code inside the block if the value is true
while unless will execute it if the value is false, or nil.

```ruby
# Consider that 'food' was previewsly declared

if food # if food value is true, it will execute what's indide the block
  puts 'Greate news, we have food'
end

unless food # if food is false or null, it will executo what's inside the block
  puts 'You'll starve to death'
end
```
It is possible to get value from if statements (cool feature).

```ruby
email = if at_hotel
          "why@hotelambrose.com" # Returns this is at_hotel is true.
        else
          "why@drnhowardcham.com" # Returns this, if false
        end
```

If you have more than one line in an if or unless, only the answer from the last full
statement will be used.
```ruby
at_hotel = true
email = if at_hotel
          address = "why"
          address << "@hotelambrose"
          address << ".com"
        end                         #retuns why@hotelambrose.com.
```

## Destructive metrods

Destructive methods use an exclamation mark and the end of it. They change the
variable value directly.

```ruby
fruits = 'Banana Orange Apple Melon'

puts 'without exclamation mark: ' << fruits.gsub(' ', ', ')
puts 'Variable value: ' << fruits


puts 'with exclamation mark: ' << fruits.gsub!(' ', ', ')
puts 'Variable value: ' << fruits
```

## Kernel methods

Everything in ruby is a class and the main part or ruby is a kernel class.
This class contains methods such as 'puts', 'print', 'gets' that can also
called as following:

```Ruby
Kernel::puts "batata"
```
However, you don't need to use this sintaxe because ruby knows where to find
those.

Diferently, if you use other kind of method, for instans 'open' to work with
files, you need to explicitly say the method's class beforehand.
```ruby
File::open('batata.txt', 'w') # Opens a file named batata.txt with permission
                              # to write on it.
```


