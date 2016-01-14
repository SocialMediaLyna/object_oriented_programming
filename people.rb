# Let's start by creating two classes: one called Student and another called Instructor.

class Person
  attr_accessor :name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

  end
end

class Student < Person
  def learn
    puts "I get it!"
end
  def speak
    puts "Hi, my name is #{name}"
  end
end


class Instructor < Person
  def teach
    puts "Everthing in Ruby is an Object"
end
  def speak
    puts "Hi, my name is #{name}"

  end
end
