class Confection
    def bake
        puts "Baking at 350 degrees for 25 minutes."
    end
end

class Cupcake < Confection
    def bake
        super + "Applying frosting"
    end
end

class BananaCake < Confection; end

## execute

myCupcake = Cupcake.new
myCupcake.bake
#myCupcake.frost

myBananaCake = BananaCake.new
myBananaCake.bake

