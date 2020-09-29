def signup()
  puts "Choisis un mot de passe :"
  print "> "
  mdp = gets.chomp
  return mdp
end 

def login(mdp)
  continue = true
  while continue
    puts "Entre ton mot de passe :"
    print "> "
    tentative = gets.chomp
    if(tentative==mdp)
      puts
      continue=false
    else 
      puts "Mot de passe erroné\n\n"
    end
  end
end

def welcome_screen()
  puts "Bienvenu dans ta zone secrète tu vas pouvoir accéder à des messages secrets."
end

def perform()
  mdp = signup()
  login(mdp)
  welcome_screen()
end

perform()