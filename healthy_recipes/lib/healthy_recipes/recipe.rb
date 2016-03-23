class HealthyRecipes::Recipe

    attr_accessor :name, :recipe

  def self.today
    #puts "Todays diet!"
    #binding.pry
      self.scrape_recipes
  end

  def self.scrape_recipes
    recipes = []


    recipes << self.scrape_breakfast_recipes1
    recipes << self.scrape_breakfast_recipes2
    recipes << self.scrape_breakfast_recipes3
    recipes << self.scrape_breakfast_recipes4
    recipes << self.scrape_breakfast_recipes5
    recipes << self.scrape_breakfast_recipes6
    recipes << self.scrape_breakfast_recipes7

  end

  def self.scrape_breakfast_recipes1
    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))
binding.pry


    recipe1 = self.new
    recipe1.name = doc.css("h2")[0].text
    recipe1.recipe = doc.css(".compact")[0].text
    recipe1
  end
     def self.scrape_breakfast_recipes2
    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))
    recipe2 = self.new
    recipe2.name = doc.css("h2")[1].text
    recipe2.recipe = doc.css(".compact")[1].text
    recipe2
    end

  def self.scrape_breakfast_recipes3
    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))

  recipe3 = self.new
    recipe3.name = doc.css("h2")[2].text
    recipe3.recipe = doc.css(".compact")[2].text
    recipe3
  end

  def self.scrape_breakfast_recipes4
    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))
    recipe4 = self.new
    recipe4.name = doc.css("h2")[3].text
    recipe4.recipe = doc.css(".compact")[3].text
    recipe4
  end

  def self.scrape_breakfast_recipes5
    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))
    recipe5 = self.new
    recipe5.name = doc.css("h2")[4].text
    recipe5.recipe = doc.css(".compact")[4].text
    recipe5
  end


  def self.scrape_breakfast_recipes6
    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))
    recipe6 = self.new
    recipe6.name = doc.css("h2")[5].text
    recipe6.recipe = doc.css(".compact")[5].text
    recipe6
  end


  def self.scrape_breakfast_recipes7

    doc = Nokogiri::HTML(open("https://authoritynutrition.com/7-healthy-low-carb-meals/#1"))

    recipe7 = self.new
    recipe7.name = doc.css("h2")[6].text
    recipe7.recipe = doc.css(".compact")[6].text
    recipe7
  end

end