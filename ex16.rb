filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "if you don't want that,hit CTRL-C."
puts "if you do want that,hit return."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm goint to ask you for three lines."

print "line 1:";line1 = STDIN.gets.chomp()
print "line 2:";line2 = STDIN.gets.chomp()
print "line 3:";line3 = STDIN.gets.chomp()

puts "I'm going to write these to this file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
puts "And finally,we close it."
target.close()
