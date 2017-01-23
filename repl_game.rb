tail  = true
home = false
eaten = false


puts "Welcome to the forest.  You are a gecko and you must find food, avoid"
puts "predators, and find an enclosure for hiding."
puts "What is your name?"
name = gets.chomp.capitalize

puts " "
puts "Hello #{name}, the gecko!  Good luck today."

food = false
hole = false
plants = false

until food && plants && hole == true
puts " "
puts "Ahead, you see several tall trees, some small plants at their base, and"
puts "a hole at the base of the tree that you can just see underneath the plants."
puts "Which would you like to explore? (Trees, plants, or hole)"
explore = gets.chomp.downcase


  case explore
  when "trees"
    puts " "
    puts "Would you like to search for bugs or fruit?"
    food = gets.chomp.downcase
    case food
    when "bugs"
      food = true
      puts " "
      puts "You see a large cricket crawling on a leaf, but it sees you."
      puts "Do you try to get it anyway? (yes or no)"
      cricket = gets.chomp.downcase
        case cricket
          when "yes"
            puts " "
            puts "The cricket saw you jumping at it and got away!  While you"
            puts "were jumping, you knocked a piece of overripe fruit off the"
            puts "branch and it landed on the ground."
            puts "You will have to get it back on the ground."
          when "no"
            puts "You keep climbing up the tree and looking for more food,"
            puts "then noticed from this height a piece of fruit on the ground"
            puts "that you didn't see before.  You head back down the tree."
          else
            puts "The cricket got away! Luckily you see a piece of fruit on the"
            puts "ground you didn't notice before."
          end
    when "fruit"
        puts " "
        puts "You see an overripe piece of fruit hanging from a branch."
        puts "When you try to get at it, the branch breaks and the fruit falls"
        puts "to the ground.  You'll have to get it back on the ground."
        food = true
    else
        puts " "
        puts "You notice a piece of fruit has fallen from the tree and is on the"
        puts "ground nearby.  Dinner!"
        food = true
    end


  when "plants"
    puts " "
    puts "You crawl up to the plants and start looking through them to find"
    puts "food or shelter and find a nice small hole that seems well protected."
    puts "This would be a great place to sleep!"
    plants = true


  when "hole"
    puts " "
    puts "A large tegu lizard comes up out of the hole and tries to eat you!"
    puts "Run!  Up the tree or through the grass? Or do you stay and fight?"
    puts "(trees, grass, fight)"
    run = gets.chomp.downcase

    case run
    when "grass"
      puts " "
      puts "The tegu is faster than you!  He catches up to you as you loop"
      puts "back around and run up the tree"
      hole = true
    when "trees"
      puts "You quickly run up the tree and the tegu is too heavy to climb up"
      puts "after you. You are safe!"
      hole = true
    when "fight"
      puts "He's a much larger lizard than you!  He eats you quickly."
      eaten = true
      break
    else
      puts "You were eaten!"
      eaten = true
      break
    end
  end
end

puts " "

if eaten == false
  puts " "
  puts "You drag a piece of fruit back to the new hole you found as a safe place"
  puts "to hide for the night, but when you get there, another lizard is waiting"
  puts "in the hole!"
  puts "What do you do? Do you run, offer to share your fruit, or fight?"
  puts "(select run, fruit, fight)"
  lizard = gets.chomp.downcase
  puts " "
  case lizard
  when "run"
    puts "You dropped your fruit, turned and ran."
    fruit = false
    home = false
  when "fruit"
    puts "The other lizard seems hungry and happily shares the fruit with you"
    puts "and allows you to stay."
    home = true
    fruit = true
  when "fight"
    puts "You attack the other lizard! You manage to chase him out, but in the"
    puts "process he bites your tail and it drops!"
    tail = false
    home = true
  else
    puts "You dropped your fruit, turned and ran."
    fruit = false
    home = false
  end

else
  puts "Your story ends here tragically."
end

if fruit and home and tail == true
  puts "Congratulations #{name}! You found shelter, avoided predators,"
  puts "and found food.  You can rest with a full stomach and feel safe."
elsif tail == false
  puts "You made it through the day #{name}!  You lost your tail, but it will grow back."
  puts "At least you have a full stomach and a place to rest in safety.  Good job!"
elsif eaten == true
  puts "#{name}, you sadly did not survive the day."

else
  puts "#{name}, you are hungry and have no where safe to spend the night.  Hopefully you"
  puts "make it through the night and have better luck tomorrow!"
end
