require 'pry'

class OrangeTree
  attr_accessor :age, :height
  def initialize
   @height = 0
   @age = 0
  end 
  def age! 
    @age +=1  
    return @age 
  end  
  def height
    @height +=1
    return @height
  end 
  def dead?
    if @age > 5
      true
    else
      false
    end
    #assume orange trees live for 5 years
  end
  def any_oranges?
     [true,true,true,true,true,true,true,false].sample
  end
  def pick_an_orange!
     Orange.new
  end 
end 

class Orange
  attr_accessor :diameter
  def initialize
    @diameter = [3,3.5,4].sample
  end 
end

tree = OrangeTree.new
basket = []

#def avg_diameter 
#   /(basket.count)
#end 

until tree.dead?
  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""
  while tree.any_oranges?
     basket << tree.pick_an_orange!
  end
  tree.age!
end
binding.pry

#avg_diameter = # It's up to you to calculate the average diameter for this harvest.#


tree.age!

puts "Alas, the tree, she is dead!"
