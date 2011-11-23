#this one is like your scripts with argv
def puts_two(*args)
  arg1, arg2 = args
  puts "arg1:#{arg1}, arg2:#{arg2}"
end

#ok, that *args is actually pointers,we can just do this
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2:#{arg2}"
end

#this just takes one argument
def puts_one(arg1)
  puts "arg1:#{arg1}"
end

#this one takes no argument
def puts_none()
  puts "I got nothing."
end

puts_two("Jack", "Rose")
puts_two_again("Jack", "Rose")
puts_one("first")
puts_none()