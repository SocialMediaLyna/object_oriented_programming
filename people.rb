class Person
  attr_accessor :name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

  end
end

class Student < Person
  def learn   # It worked but it included a nil at the end... perhaps use p instead of puts?
    puts "I get it!"
end
  def speak
    puts "Hi, my name is #{@first_name} #{@last_name}"
  end
end


class Instructor < Person
  def teach   # It worked but it included a nil at the end... perhaps use p instead of puts?
    puts "Everthing in Ruby is an Object"
end
  def speak
    puts "Hi, my name is #{@first_name} #{@last_name}"

  end
end
