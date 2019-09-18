require 'open-uri'

open( "http://preeventualist.org/lost" ) do |lost|
  puts lost.read
end # This script downloads a page from the internet, but I only get a 404.
    # The link is probably not online anymore.

# Opening an idea file from a folder on your computer.
open( "./test-file.txt" ) do |idea|
  puts idea.read
end

# Opening an idea file available on a web site.
open( "http://your.com/idea-about-hiding-lettuce-in-the-church-chairs.txt" ) do |idea|
  puts idea.read
end
