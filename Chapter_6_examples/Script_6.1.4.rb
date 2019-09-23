# The method opens two files and slides the resulting IO objects down the
# chute to an attached block.
def double_open filename1, filename2
  open( filename1 ) do |f1|
    open( filename2 ) do |f2|
      yield f1, f2
    end
  end
end

# Prints the files out side-by-side.
double_open( "file_in_english.txt", "file_in_korean.txt" ) do |f1, f2|
      puts f1.readline + " | " + f2.readline
end