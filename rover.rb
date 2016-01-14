class Rover

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

# State = x, y, direction
# Behaviour = read instruction, move, turn
