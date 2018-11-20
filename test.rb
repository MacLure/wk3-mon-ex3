require './product.rb'
require './cart.rb'

soap = Product.new("soap", 5, 0.13)
shoes = Product.new("shoes", 90, 0.12)
shirt = Product.new("shirt", 30, 0.14)

puts Cart.show_contents
puts '-------------'
Cart.add(soap)
puts Cart.show_contents
puts Cart.total_cost_before_tax
puts Cart.total_cost_after_tax
puts '-------------'
Cart.add(shirt)
puts Cart.show_contents
puts Cart.total_cost_before_tax
puts Cart.total_cost_after_tax
puts '-------------'
Cart.add(shoes)
puts Cart.show_contents
puts Cart.total_cost_before_tax
puts Cart.total_cost_after_tax
puts '-------------'

Cart.remove(soap)
puts Cart.show_contents
puts Cart.total_cost_before_tax
puts Cart.total_cost_after_tax
puts '-------------'
Cart.add(soap)
puts Cart.show_contents
puts Cart.total_cost_before_tax
puts Cart.total_cost_after_tax
puts '-------------'