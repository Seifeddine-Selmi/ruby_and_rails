 jours_ouvres = [
  "lundi","mardi","mercredi","jeudi","vendredi"
]

i=5

jours_ouvres.each do |jour|
  if jour == "vendredi" 
    puts jour + " : Bon weekend !"
  elsif jour == "lundi"
    puts jour + " : Bon courage !"
  else
    puts jour + " : Weekend dans #{i} jours !"
  end
  i-=1
end

#10.times do |j|
#	puts "Hello #{j}" #le #{j} permet d'afficher la valeur de la variable j
#end

villes = ['Paris', 'New York', 'Berlin', 'Montréal']
puts "DEFI N°1 - Si j'étais en vacances, j'irais à..."
villes.each do |ville|
  puts ville
end


voyages = [
    { ville: "Paris", duree: 10 },
    { ville: "New York", duree: 5 },
    { ville: "Berlin", duree: 2 },
    { ville: "Montréal", duree: 15 }
]

puts "DEFI N°2 - Détail de mes vacances de rêve"




voyages.each do |voyage|
  if voyage[:duree] <= 5
    puts "Voyage à #{voyage[:ville]} de #{voyage[:duree]} jours"
  end
end
