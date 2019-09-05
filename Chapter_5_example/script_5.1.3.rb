# The function below will throw you an error because variables outside a method
# scope are not recognizable by the method (the method can't see the variable).

opus_magnum = true
def save_hannah_1
  success = opus_magnum
end

# A global variable (start with $) can be seen in any scope. So the code below
# won't throw an error.

$OPUS_MAGNUM = true
def save_hannah_2
  success = $OPUS_MAGNUM
end

# A instace variable (starts with @) and a class variable (starts with @@) won't
# throw errors as long as a method is inside their specific class (to review
# instance and variable classes, go to chapter 2).

@opus_magnum = true
def save_hannah_3
  success = @opus_magnum
end

@@opus_magnum = true
def save_hannah_4
  success = @@opus_magnum
end

puts "save hannah 1: #{save_hannah_1}"
puts "save hannah 2: #{save_hannah_2}"
puts "save hannah 3: #{save_hannah_3}"
puts "save hannah 4: #{save_hannah_4}"

# This code is runable if you comment line 31
