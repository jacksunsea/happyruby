cities = {'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Portland'}
  
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

def find_city(map, state)
  if map.include? state
    return map[state]
  else
    return "Not found."
  end
end

#ok pay attetion!
cities[:find] = method(:find_city)

while true
  print "state?(Enter to quit)"
  state = gets.chomp()
  break if state.empty?
  #this line is the most important ever!study
  puts cities[:find].call(cities, state)
end
