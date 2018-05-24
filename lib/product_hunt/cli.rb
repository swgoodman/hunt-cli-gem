
class ProductHunt::CLI
  attr_accessor :top_five


  def call
    greeting
    show_top_five
    menu
  end

  def greeting
    puts "Welcome to Product Hunt Top Five."
  end

  def show_top_five
    @top_five = ProductHunt::Product.top_five
    @top_five.each.with_index(1) do |product, i|
      puts "#{i}. #{product.name}"
      puts "#{product.blurb}"
    end
  end

  def menu
    input = nil
    puts "Enter the number of the product you'd like more info on or 'exit':"
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i.between?(1,@top_five.length)
        puts "more info on 1."
        puts "Type 'list' to choose another or 'exit'."
      elsif input == "list"
        show_top_five
        puts "Enter the number of the product you'd like more info on or 'exit':"
      elsif input == "exit"
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
