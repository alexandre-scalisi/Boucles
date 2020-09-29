def half_pyramid ()
  puts "Salut, bienvenue dans ma moitié de pyramide ! Combien d'étages veux-tu ?"
  print "> "
  nombre = gets.to_i
  puts "Voici la pyramide :"
  nombre.times do |i|
      puts (" "*(nombre-(i+1)) + "#"*(i+1) )
  end
end

def full_pyramid ()
  puts "Salut, bienvenue dans ma full pyramide ! Combien d'étages veux-tu ?"
  print "> "
  nombre = gets.to_i
  puts "Voici la pyramide :"
  nombre.times do |i|
      puts (" "*(nombre-(i+1)) + "#"*(i+1) + "#"*i)
  end
end

def wtf_pyramid ()
  puts "Salut, bienvenue dans ma wtf pyramide ! Combien d'étages veux-tu ?"
  print "> "
  nombre = gets.to_f
  moitie = (nombre/2).ceil
  increment = 0
  puts "Voici la pyramide :"
  moitie.times do |i|
      puts (" "*(moitie-(i+1)) + "#"*(i+1) + "#"*increment)
      increment+=1
  end
  increment-=2
  (nombre-moitie).to_i.times do |i|
    puts (" "*(i+1) + "#"*(increment)+ "#"*(moitie-i-1))
    increment-=1
  end
end

def choose_method(choix)
    case choix
    when 1
      half_pyramid
    when 2
      full_pyramid
    when 3
      wtf_pyramid
    else
      puts "relance"
      return 0
    end
end

puts "Bienvue dans ce jeu de pyramide"
puts "1- half  2-full  3-wtf"
choix = gets.to_i
if choix >=1 && choix <=3
choose_method(choix)
else 
  puts "relance"
end