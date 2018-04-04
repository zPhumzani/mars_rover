require_relative "./mars_rover/version"
require_relative "./mars_rover/rover"
require_relative "./mars_rover/operator"

module MarsRover
  plateau = ARGF.gets

  while !ARGF.eof
    rover_position = ARGF.gets
    position = rover_position.split[0, 2]
    direction = Directions.go(rover_position.split[2])

    rover = Rover.new(direction, position)
    Operator.new(rover).receive ARGF.gets

    puts rover
  end
  puts "=========="

end
