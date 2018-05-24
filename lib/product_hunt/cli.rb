
class ProductHunt::CLI


  def call
    greeting
    show_top_five
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
    puts "Enter the number of the product you'd like more info on:"
  end
end
