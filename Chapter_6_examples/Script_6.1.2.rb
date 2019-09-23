require 'open-uri'

# This code will print any line that has the string 'dolor'.
open('test-file.txt') do |truck| # Opens the file and keep it in truck
  truck.each_line do |line| # reads each line
    puts line if line['dolor'] # print the line if it includes 'dolor'
  end
end
