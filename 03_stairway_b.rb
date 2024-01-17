def movement(dice_value)
  current_stair = 0
  if dice_value == 5 || dice_value == 6
    current_stair = current_stair +  1 
  end
  
  if dice_value == 2 || dice_value == 3 || dice_value == 4
    current_stair = current_stair
  end

  if dice_value == 1
    if current_stair == 0
      current_stair = current_stair
    else   
      current_stair = current_stair - 1
    end    
  end
    return current_stair
end

def position_stair(move)
  position = 0
  final_position = move + position
  turns = 0
  while final_position != 10
    number = movement(rand(1..6))
    final_position = final_position + number
    turns += 1
  end
  return turns
end

def perform
  list = []
  100.times do
    current_stair = movement(rand(1..6)) 
    turns = position_stair(current_stair)
    list.push(turns)
  end
  puts list.inspect
  puts list.length
  puts "moyenne des tours #{list.sum / list.length}"
end

perform


# fonction average_finish_time
#   100.times do perform
#   while marches != 10 
#     nb tours += 1
#   list[]
#   list.push(nb tours)
#   total = list.sum / list.length
#   puts "total"