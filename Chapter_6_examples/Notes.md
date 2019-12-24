# Downtown

## Section 1: reading files line by line

An interesting feature that I just found out is that if you have a string and
you use brackets with and string inside, it will be returned the string inside
the brackets if this substring is found. Otherwise it returns nil.

```ruby
>> batata = 'some people like me love kimchi'
>> batata['people']
people
>> batata['Will not find']
==> nil
```

## eval, instance_eval and class_eval

1. eval
eval is a method that makes it possible for you to make up code.

2. instance_eval
Provides you with the possibility of write code as if you were inside a object's instance method.

3. class_eval
Runs the code as if it was inside a class definition.

## Method missing

method_missing is a method that executes when a certain method form a certain class is called but
doesn't exist.

```ruby
class NameCaller
  def method_missing( name, *args )
    puts "You're calling `#{name}' and you say:"
    args.each { |say| puts "  " + say }
    puts "But no one is there yet."
  end
  def deirdre( *args )
    puts "Deirdre is right here and you say:"
    args.each { |say| puts "  " + say }
    puts "And she loves every second of it."
    puts "(I think she thinks you're poetic.)"
  end
end

irb> NameCaller.new.simon( 'Hello?', 'Hello? Simon?' )
  > You're calling `simon' and you say:
  >   Hello?
  >   Hello? Simon?
  > But no one is there yet.
```
# Method clone
This method makes an exact copy of a ruby object (deep copy)

```ruby
irb> tree = [:berry, :berry, :berry]
  => [:berry, :berry, :berry]
irb> treechild = tree.clone
  => [:berry, :berry, :berry]
```
Assigning a variable to another variable makes a shallow copy.
Dup does the same thing as clone but it doesn't copy exatly the same object,
for example, frozen objects copied with dup won't be frozen.