class Animal
    attr_accessor :name, :age
    def stroke
        print("whee #{name} loves u\n")
    end
end


class Dog < Animal
    def talk
        print("WOOF\n")
    end
    def eat(food)
        print("#{name} liked ur #{food}")
    end
end
class Cat < Animal
    def talk
        print("MEOW\n")
    end
    def eat(food)
        print("this #{food} is not interesting\n")
    end
end
class Hedgehog < Animal
    def talk
        print("Mya\n")
    end
    def stroke
        super
        print("U get maim((\n")
    end
end


g = Hedgehog.new
g.stroke