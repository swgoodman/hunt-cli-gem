
class ProductHunt::CLI


  def call
    greeting
    show_top_five
    menu
  end

  def greeting
    puts "Welcome to Product Hunt Top Five."
  end

  def show_top_five
    puts "1. App"
    puts "2. Website"
    puts "3. Gear"
    puts "4. New feature"
    puts "5. App"
  end

  def menu
    input = nil
    puts "Enter the number of the product you'd like more info on or 'exit':"
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on 1."
        puts "Type 'list' to choose another or 'exit'."
      when "2"
        puts "more info on 2."
        puts "Type 'list' to choose another or 'exit'."
      when "list"
        show_top_five
        puts "Enter the number of the product you'd like more info on or 'exit':"
      when "exit"
        goodbye
      else
        puts "Not sure what you want? Type 'list' or 'exit'."
      end
    end
  end

  def goodbye
    puts "Thanks for stopping by."
  end
end
