class Rover

  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction(instruction)
    instruction.each_char do |char|
      if char == "M"
        move
      else
        turn(char)
      end
    end
  end

  def move
    if @direction == "N"
      @y += 1

    elsif @direction == "E"
      @x += 1

    elsif @direction == "S"
      @y -= 1

    elsif @direction == "W"
      @x -= 1
    end


  end

  def turn(direction_turn)
    if direction_turn == "R"
      if @direction == "N"
          @direction = "E"
      elsif @direction == "E"
          @direction = "S"
      elsif @diretion == "S"
          @direction = "W"
      elsif @direction == "W"
          @direction = "N"
      end

    elsif direction_turn == "L"
        if @direction == "N"
            @direction = "W"
        elsif @direction == "W"
            @direction = "S"
        elsif @diretion == "S"
            @direction = "E"
        elsif @direction == "E"
            @direction = "N"
        end

      end
  end
end
  puts "Enter the plateau size"
  size = gets.chomp.split
  puts size
  puts "Enter coordinates"
  coordinates = gets.chomp.split
  puts coordinates
  # coordinates = ["1", "2", "N"]
  x = coordinates[0].to_i
  y = coordinates[1].to_i
  direction = coordinates[2]
  rover1 = Rover.new(x, y, direction)
  puts "Enter your list of commands"
  commands = gets.chomp
  rover1.read_instruction(commands)
  puts "#{rover1.x} #{rover1.y} #{rover1.direction}"

  puts "Enter coordinates"
  coordinates = gets.chomp.split
  puts coordinates
  x = coordinates[0].to_i
  y = coordinates[1].to_i
  direction = coordinates[2]
  rover2 = Rover.new(x, y, direction)
  puts "Enter your list of commands"
  commands = gets.chomp.split("")
  puts commands
  commands.each do |command|
    if command == "L"
        rover2.turn(command)
    elsif command == "R"
        rover2.turn(command)
    elsif command == "M"
        rover2.move
    end
  end
  puts "#{rover2.x} #{rover2.y} #{rover2.direction}"
