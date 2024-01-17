def ask_stage_number
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (nb impair)"
  number = gets.chomp.to_i
  return number
end


# def half_pyramid(number)
#    number.times do |i|
#      space = "2" * (number - (i + 1))
#      hashtag = "#" * (i +1)
#      puts "#{space}#{hashtag}"
#     end
# end



def full_pyramid(number)
  number = number/2 + 1
  number.times do |i|
   space = " " * (number - (i + 1))
    hashtag = "#" * (i +1)
  print "#{space}#{hashtag}"
  puts "#" * i
  end
end

def reversed_pyramid(number)
  number = number/2
  number.times do |i|
    hashtag = "#" * (2 * (number - i) -1)
    space = " " * (i +1)
    print "#{space}#{hashtag}"
    puts "#{space}"
  end
end

def wtf_pyramid(number)
  full_pyramid(number)
  reversed_pyramid(number)

end  

def perform
  number = ask_stage_number
  wtf_pyramid(number)
  
end

perform