require './product.rb'

class Cart

    @@cart_contents = []



    def self.show_contents
        return @@cart_contents
    end

    def self.add(product)
        @@cart_contents << product
        return @@cart_contents
    end

    def self.remove(product)
        @@cart_contents.delete(product)
        return @@cart_contents
    end

    def self.total_cost_before_tax
        total_before_tax = 0
        for product in @@cart_contents
            total_before_tax +=  product.base_price
        end
        return total_before_tax
    end

    def self.total_cost_after_tax
        total_before_tax = 0
        for product in @@cart_contents
            total_before_tax +=  product.calculate
        end
        return total_before_tax
    end
end