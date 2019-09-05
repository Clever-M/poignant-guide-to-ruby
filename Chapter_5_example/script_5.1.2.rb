# You can use if-else to do the same thing you'd do with case-when. However,
# it's preferable to use case-when if you have many options, because if-else
# becomes wordier and more difficult to read.

def dr_chams_timeline_case_when( year )
  case year
  when 1894
    "Born."
  when 1895..1913
    "Childhood in Lousville, Winston Co., Mississippi."
  else
    "No information about this year."
  end
end

def dr_chams_timeline_if_else( year )
  if 1894 === year # Three equals is a looser comparison than two equals
    "Born."
  elsif (1895..1913) === year
    "Childhood in Lousville, Winston Co., Mississippi."
  else
    "No information about this year."
  end
end

puts 'Choose an year:'
year = gets.to_i

puts 'Example with case-when'
puts "\n #{dr_chams_timeline_case_when(year)}"

puts 'Example with if-else-elseif'
puts "\n #{dr_chams_timeline_case_when(year)}"
