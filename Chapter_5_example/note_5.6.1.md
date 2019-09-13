# Then what make the rules

## Section 5.6: useful rails commands and variables

#### Ruby version

This comman displays the current ruby version being used by the computer
```ruby
irb> RUBY_VERSION
```
#### Getting ruby settings with rbconfig


```ruby
irb> require 'rbconfig' # imports 'rbconfig library'

irb> RbConfig::CONFIG # returns a hash with all environment settings used to setup ruby

irb> RbConfig::CONFIG['host_os'] # Shows the hosting OS

irb> RbConfig::CONFIG['rubylibdir']. # Shows where core Ruby libraries are stored

irb> RbConfig::CONFIG['datadir'] # Tells where halper files are stored

irb> $" # Returns an array with all libraries loaded with require key words.
        # Most of those libraries were loaded by irb.

irb> $: # Global variable that contains all directories that ruby will check
        # when a filed is tried to be loaded with require keyword.

irb> $LOAD_PATH # Same as $:
```

#### Changing work directory

```ruby
irb> Dir.chdir( "bay://Ruby/lib/site_ruby/1.9/" ) # Changes the current working directory

irb> Dir["./*.{rb}"] # Shows all rb files
```
#### Modules

Modules are simpler than classes. They are storage facility for methods (no attributes).

You can include methods into classes by using the keywork 'Include'

```ruby
require 'endertromb'

module WishScanner
  def scan_for_a_wish
    wish = self.read.detect do |thought|
      thought.index( 'wish: ' ) == 0
    end
    wish.gsub( 'wish: ', '' )
  end
end

require 'mindreader'

class MindReader
  include WishScanner
end
```

The scan_for_a_wish in the WishScanner has a self.read method. So whatever class
this module is being mixed needs to have a 'read' method. Which means that a
mixin has some requirements, so to use it in a class, the latter needs to meet
some requirements.
