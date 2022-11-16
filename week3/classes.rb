# class Student
#     # code for this class
# end
  
#   student = Student.new
#   puts student.class
#   puts student.is_a? Student
#   p student.class.ancestors
  
#   p 1.class
#   p "Hola".class
#   p nil.class
#   p false.class
#   p 1.class.ancestors

# class Student
#     def initialize(name, last_name)
#       puts "I am a new Student, my name is #{name} #{last_name}"
#     end
#   end
  
#   rosa = Student.new("Rosa", "Apellido Rosa")
#   rosa
#   victor = Student.new("victor", "Apellido Victor")
#   juan = Student.new("Juan", "Apellido Juan")
#   puts rosa

# class Student
#     attr_reader :name
#     def initialize(name)
#       @name = name
#       puts "I am a new Student"
#     end
  
#     def name
#       @name
#     end
  
#     def say_hi
#       puts "Hi, my name is #{name}"
#     end
#   end
  
#   victor = Student.new("Victor")
#   victor.say_hi
#   puts victor.name

# class Student
#     attr_accessor :name
#     attr_reader: Apellido
  
#     def initialize(name, last_name)
#       @name = name
#       @last_name = last_name
#       puts "I am a new Student"
#     end
  
#     def say_hi
#       puts "Hi, my name is #{name} #{last_name}"
#     end
#   end
  
#   victor = Student.new("Victor", "Espinoza")
# #   puts victor.say_hi
#   puts victor.name
#   puts victor.last_name
#   victor.name = "Vic"
#   victor.last_name = "Ramirez"
#   puts victor.name
#   puts victor.last_name

class Human
    attr_reader :name
  
    # Variable de clase @@, disponible en todas las instancias
    @@humans = 0 
    def initialize(name)
      # Variable de instancia @, solo en su instancia
      @name = name 
      @@humans += 1
    end
    # Sin self es un metodo de instancia
    def say_hi(name)
      puts "Hello #{name}, my name is #{self.name}"
    end
    # Cuando utilizamos self nos referimos a un metodo de clase
    def self.count
      @@humans
    end
  end
  wilder = Human.new("Wilder")
  hiram = Human.new("Hiram")
  teddy = Human.new("Teddy")
  p Human.count