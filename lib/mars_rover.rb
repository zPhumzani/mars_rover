require_relative "./mars_rover/version"
require_relative "./mars_rover/rover"
require_relative "./mars_rover/operator"

module MarsRover
  plateau = ARGF.gets
  results = []

  while !ARGF.eof
    rover_position = ARGF.gets
    position = rover_position.split[0, 2]
    direction = Directions.go(rover_position.split[2])

    rover = Rover.new(direction, position)
    puts "Driving from " + "#{rover}"
    Operator.new(rover).receive ARGF.gets


    puts "To " + "#{rover}"
    results << rover
  end
  puts "=========="
  puts ""
  puts results
  puts ""
  puts "=========="

end
