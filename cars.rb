require 'set'
####### PART 2 #######

showroom = Set.new
p showroom
#<Set: {}>

showroom.add("Integra")
showroom.add("Passat")
showroom.add("Altima")
showroom.add("Civic")
p 
#<Set: {"Integra", "Passat", "Altima", "Civic"}>

p showroom.length
#4

showroom.add("Passat")
p showroom
#<Set: {"Integra", "Passat", "Altima", "Civic"}>

showroom_2 = ["F150", "Mini"].to_set
p showroom_2
#<Set: {"F150", "Mini"}>

showroom.merge(showroom_2)
p showroom
#<Set: {"Integra", "Passat", "Altima", "Civic", "F150", "Mini"}>

showroom.delete("Mini")
p 
#<Set: {"Integra", "Passat", "Altima", "Civic", "F150"}>

####### PART 2 #######

junkyard = Set.new
p junkyard 
#<Set: {}>

junkyard.add("Pinto")
junkyard.add("LeBaron")
junkyard.add("6000")
junkyard.add("Century")
junkyard.add("Passat")
junkyard.add("F150")
p junkyard
#<Set: {"Pinto", "LeBaron", "6000", "Century", "Passat", "F150"}>

p showroom.intersect? junkyard #true

showroom = showroom.union(junkyard)
p showroom
#<Set: {"Integra", "Passat", "Altima", "Civic", "F150", "Pinto", "LeBaron", "6000", "Century"}>

showroom.delete("Century")
showroom.delete("6000")
p showroom
