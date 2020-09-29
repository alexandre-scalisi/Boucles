def average_finish_time()
total = 0.0
  100.times do 
    total+=jeu_sans_text
  end
return total/100
end

def jeu_avec_texte()
  puts "Bienvenu dans le jeu des escaliers"
  marche = 0
  tour = 0

  while marche < 10 
    tour += 1
    puts "tour n°#{tour}"
    random = rand(6)+1
    
    puts "appuyez sur la touche \"entrée pour commencer"
    gets
    puts "Dé = #{random}"
    case random
      when 5 
        marche +=1
        puts "Bravo vous avancez d'une marche et vous etes à la marche n°#{marche}"
      when 6
        marche +=1
        puts "Bravo vous avancez d'une marche et vous etes à la marche n°#{marche}"
      when 1
        if(marche == 0)
          puts "Vous ne pouvez pas descendre plus bas"
        else 
          marche-=1
          puts "Vous avez reculé d'une marche, vous etes désormais à la marche n°#{marche}"
        end
      else 
        puts "Vous restez où vous etes (marche n°#{marche})"
    end


  end
  puts "Vous avez fini en #{tour} tours"
end

def jeu_sans_text()
  marche = 0
  tour = 0

  while marche < 10 
    tour += 1
    random = rand(6)+1
    case random
      when 5 
        marche +=1
      when 6
        marche +=1
      when 1
        if(marche != 0)
          marche-=1      
        end
      else 
        
    end


  end
  return tour
end

puts "Moyenne = #{average_finish_time} tours"
