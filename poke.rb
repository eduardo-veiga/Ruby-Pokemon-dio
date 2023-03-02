#vars

iniatk = rand(5..15)
inihp = rand(30..50)
wildatk = rand(5..15)
wildhp = rand(30..50)
#list
pokedex = ["Bulbasaur","Ivysaur","Venusaur","Charmander†","Charmeleon","Charizard","Squirtle†","Wartortle","Blastoise","Caterpie","Metapod","Butterfree"]

count = 0

wildran = pokedex[rand(11)]
pokemon = wildran
#pokemon randon gerado
pokewild = [pokemon,wildatk,wildhp]
puts "Pokemon Wild Appeared #{pokemon} "
puts " Status Wild Pokemon Attak-#{pokewild[1]} Hp-#{pokewild[2]}"
#code
puts""

for poke in pokedex
    puts "#{count} - #{poke}    escolha um pokemon por numero!!"
    count += 1
end

escolha = [gets.chomp.to_i,iniatk,inihp]
puts "Your Pokemon Status "
puts pokedex[escolha[0]],escolha[1,2]
sleep(3)

while escolha[2] >= 0 && pokewild[2] >= 0
    puts " Your Pokemon's Life#{escolha[2]}"
    puts " wild Pokemon's life#{pokewild[2]}"
    pokewild[2] = pokewild[2] - escolha[1]
    puts "you pokemon attak #{escolha[1]}"
    escolha[2] = escolha[2] - pokewild[1]
    puts "wild pokemon attak #{pokewild[1]}"
    sleep(1)
end

if pokewild[2] < escolha[2]
    puts "You Won"
    #venceu
elsif pokewild[2] == escolha[2]
    puts "Draw"
else escolha[2] <= 0
    puts "You Loose"
end