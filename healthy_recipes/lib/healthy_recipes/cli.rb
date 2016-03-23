#This is our CLI controller
class HealthyRecipes::CLI

  def call
   list_options
    menu
    #goodbye
  end

  def list_options
    puts "Welcome to a Healthy World of Carb conscious recipes."
    puts "Today's Carb Conscious Breakfast Recipes."

    @recipes = HealthyRecipes::Recipe.today
    @recipes.each do |recipe|
    puts "#{recipe.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"

    puts "Enter the number of recipe U want to see or type list to see the options again or type exit."
    input = gets.strip.downcase
     if input.to_i>0
     the_recipe = @recipes[input.to_i-1]
     puts "#{the_recipe.name} - #{the_recipe.recipe}"
       elsif input == "list"
         list_options
       elsif input == "exit"
       goodbye
    else
         puts "Not sure what you want, type list or exit."
       end
     end
   end

   def goodbye
     puts "See you tomorrow for more recipes :)"
   end
 end


