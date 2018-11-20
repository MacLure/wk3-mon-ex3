require './cart.rb'

class Product

    def initialize(name, base_price, tax_rate)
        @name = name
        @base_price = base_price
        @tax_rate = tax_rate
    end

    def name
        return @name
    end

    def base_price
        return @base_price
    end

    def tax_rate
        return @tax_rate
    end

    def calculate
        total_price = base_price + (base_price * tax_rate)
        return total_price
    end
end