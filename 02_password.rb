def signup
  puts "Merci de choisir un mot de passe"
  password = gets.chomp
  puts "Mot de passe enregistré"
  sleep(1)
   return password
end

def login(password)
  puts "Rentrez le mot de passe"
input = gets.chomp
 if input == password then
    puts "le mot de passe est bon"
  sleep(1)
  elsif 
    while input != password
    puts "Mot de passe erroné, entrez à nouveau le mot de passe"
    input = gets.chomp
    end
  end
end

def welcome_screen
  puts "bienvenue sur votre écran d'accueil"
  puts "nous allons vous fournir toutes les infos dont vous aurez besoin aujourd'hui"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform