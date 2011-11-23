def prompt()
  print ">"
end

def gold_room()
  puts "This room is full of gold.How much do you take?"
  
  prompt; next_move =gets.chomp()
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice,you're not greedy,you win!"
    Process.exit(0)
  else
    dead("You greedy bastartd!")
  end
end

def bear_room()
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false
  
  while true
    prompt;next_move = gets.chomp
    
    if next_move == "take honey"
      dead("The bear gets pissed off and chews your leg off.")
    elsif