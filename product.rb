require './cart.rb'

class Product

    def initialize(name, base_price)
        @name = name
        @base_price = base_price
        @tax_system = "standard"
        @tax_rate = get_tax
        @qty = 1
    end

    def get_tax
        if  @tax_system == "standard"
            return 0.13
        end
        if  @tax_system == "tax-exempt"
            return 0.0
        end
        if  @tax_system == "imported"
            return 0.23
        end
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

    def qty
        return @qty
    end

    def increase_qty
        @qty += 1
    end

    def decrease_qty
        if @qty > 0
            @qty -= 1
        end
    end

    def calculate
        total_price = base_price + (base_price * tax_rate)
        return total_price
    end
end

