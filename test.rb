require './product.rb'
require './cart.rb'

soap = Product.new("soap", 5)
shoes = Product.new("shoes", 90)
shirt = Product.new("shirt", 30)

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
puts Cart.most_expensive
puts '-------------'

puts soap.qty
puts shoes.qty
puts shirt.qty
puts '-------------'
soap.decrease_qty
soap.decrease_qty
puts soap.qty
puts '-------------'
soap.increase_qty
shoes.increase_qty
shirt.increase_qty
shirt.increase_qty
puts soap.qty
puts shoes.qty
puts shirt.qty
puts '-------------'
shirt.decrease_qty
puts shirt.qty
