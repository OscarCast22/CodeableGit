require_relative "modules"

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Mamal < Animal
  include Runner
end

# [Mamal, Runner, Animal, Object, PP::ObjectMixin, Kernel, BasicObject]

class Human < Mamal
end
# [Human, Mamal, Runner, Animal, Object, PP::ObjectMixin, Kernel, BasicObject]

class Tiger < Mamal
  include Quadruped
end
# [Tiger, Quadruped, Mamal, Runner, Animal, Object, PP::ObjectMixin, Kernel, BasicObject]

class Panther < Mamal
  include Quadruped
  include Mentor
end
# [Panther, Mentor, Quadruped, Mamal, Runner, Animal, Object, PP::ObjectMixin, Kernel, BasicObject]

class Bear < Mamal
  include Mentor
  include Dancer
  def run
    puts "I'm too old to run"
  end
end
# [Bear, Dancer, Mentor, Mamal, Runner, Animal, Object, PP::ObjectMixin, Kernel, BasicObject]

mowgli = Human.new("Mowgli")
mowgli.run


tiger = Tiger.new("Shere Khan")
tiger.run

panther = Panther.new("Bagheera")
panther.run
panther.teach

bear = Bear.new("Baloo")
bear.dance
bear.teach
bear.run

# >> I'm Mowgli and I can run
# >> I'm Shere Khan and I can run in 4 legs
# >> I'm Bagheera and I can run in 4 legs
# >> I'm Bagheera and I can teach 
# >> I'm Baloo and I can dance
# >> I'm Baloo and I can teach you how to dance 
# >> I'm too old to run

