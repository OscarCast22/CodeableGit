# numbers = [1,2,3,4]
# new_numbers = numbers.map { |number| number * 2 }
# p new_numbers
# p numbers

# multiply_by_3
# (1..5).collect { |num| puts num * 3 }
# puts "-" * 64
# # power_of_two
# (1..5).map do |num|
#   puts num**2
# end
# def show_method(language, method_name)
#     puts "The #{language} method for #{method_name} is: "
#     yield
#   end
  
#   # show_method_ruby
#   show_method("ruby", "uppercase") { puts "upcase" }
  
#   # def show_method(language, method_name)
#   #   puts "The #{ruby} method for #{uppercase} is: "
#   #   puts "upcase"
#   # end
  
#   # show_method_javascript
#   show_method("javascript", "uppercase") { puts "toUpperCase()" }
# def show_html(content)
#     puts "The tagged content is: "
#     yield(content)
#   end
  
#   show_html("My content") { |content| puts "<p>#{content}</p>" }
  
# #   show_html("My other content") do |content| 
# #     puts "<div>#{content}</div>"
# #   end

# def show_html(content)
#     html = yield(content)
#     puts "The tagged content is: #{html}"
#   end

#   block_content = proc do |content| 
#     "<p>#{content}</p>" 
#     end
#   show_html("Add content", &block_content)
  
# #   block_content = proc { |content| "<p>#{content}</p>" }
# #   show_html("My content", &block_content)

#   proc_power_of_2 = proc do |num, index|
#     puts num**2
#   end

#   lambda_power_of_2 = lambda do |num, index|
    # puts num**2
#   end
#   
#   5.times(&proc_power_of_2)
#   5.times(&lambda_power_of_2)

# power_of_2 = lambda { |num| puts num**2 }

# (3..10).each(&power_of_2)

# power_of_3 = lambda { |num| num**3 }

# def power_up(life)
#   new_life_num = yield(life)
#   puts "Power up!!! #{new_life_num}"
# end

# power_up(2, &power_of_3)

# def power_up_call(life)
#   power_of_4 = lambda { |num| num**4 }
#   new_life_num = power_of_4.call(life)
#   puts "Power up!!! #{new_life_num}"
# end

# power_up_call(3)

lambda_power_of_2 = lambda do |num|
    return num**2
  end
  
  proc_power_of_2 = proc do |num|
    return num**2
  end
  
  def power_up(life)
    puts "Let's go!"
    new_life_num = yield(life)
    puts "Power up!! #{new_life_num}"
  end
  
  power_up(2, &lambda_power_of_2)
#   power_up(2, &proc_power_of_2)