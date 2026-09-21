class Names
  def initialize(name, name_2)
    @name = name
    @name_2 = name_2
  end

  def greet
    puts "\nHello, #{@name} and #{@name_2}!"
  end
end

names_1 = Names.new("João", "Maria")

puts names_1.greet 