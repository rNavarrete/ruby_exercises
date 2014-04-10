class PersonalChef
  def make_toast(type)
    puts "making your toast, #{type}"
    return self
  end  

  def make_eggs(quantity)
  	quantity.times do 
  	  puts "Making you #{no_of_eggs} eggs."
    end
      puts "I'm done."
  	return self
  end

  def make_milkshake(flavor)
  	puts "Making you a #{flavor} Milkshake."
  	return self
  end

  def gameplan(meals)
    meals.each do |meal|
      puts "We'll have #{meal}..."
    end  
    all_meals = meals.join(", ")
    puts "In summary: #{all_meals}."
  end  

  def produce_inventory
    produce = {"bananas" => 3, "oranges" => 5, "apples" => 7}
    produce.each do |type, number|
      puts "There are #{number} #{type} in the fridge."
    end  
  end
  
  def water_status(minutes)
  	if minutes < 7
  	  puts "The water aint boiling yet."
  	elsif minutes == 7
  	  puts "The water is barely boiling."
  	elsif minutes == 8 
  	  puts "The water is now boiling"
  	else
  	  puts "Hot Hot Hot!"
  	end      
  end

  def countdown(counter)
  	while counter > 0
  	  puts "The counter is #{counter}"
  	  counter = counter - 1
  	end
  	return self  
  end
end


class Butler
  def open_front_door
  	puts "Now opening the door sir."
  end	
end

