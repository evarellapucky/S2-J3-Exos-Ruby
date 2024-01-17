def new_game
  puts "Nouvelle partie. Vous êtes sur la marche 0"
end

def dice_throw
  puts "Veuillez lancer le dé en appuyant sur entrée"
  option = gets
  roll = rand(1..6)
  puts "#{roll}"   
  return roll
end

def movement(dice_value)
  current_stair = 0
  if dice_value == 5 || dice_value == 6
    puts "Bravo, vous montez d'une marche, "
    current_stair = current_stair +  1 
  end
  
  if dice_value == 2 || dice_value == 3 || dice_value == 4
    puts "Vous n'avancez pas, "
    current_stair = current_stair
  end

  if dice_value == 1
    if current_stair == 0
      current_stair = current_stair
      puts "Oups, vous restez sur place, "
    else   
      current_stair = current_stair - 1
      puts "Oups, vous redescendez, "
    end    
  end
    return current_stair
end

def position_stair(move)
  position = 0
  final_position = move + position
  puts "vous êtes sur la marche #{final_position}"
  while final_position != 10
    number = movement(dice_throw)
    final_position = final_position + number
    puts "vous êtes sur la marche #{final_position}"
  end
end

def winning
  puts "bravo vous avez gagné"
end

def perform
  new_game
  roll = dice_throw
  current_stair = movement(roll)
  position_stair(current_stair)
  winning
end

perform