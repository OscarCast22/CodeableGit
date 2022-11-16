module Runner
  def run
    puts "I'm #{name} and I can run"
  end
end

module Quadruped
  def run
    puts "I'm #{name} and I can run in 4 legs"
  end
end

module Mentor
  def teach
    puts "I'm #{name} and I can teach "
  end
end

module Dancer
  def teach
    puts "I'm #{name} and I can teach you how to dance "
  end

  def dance
    puts "I'm #{name} and I can dance"
  end
end