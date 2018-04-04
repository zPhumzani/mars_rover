require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: [:test_drive, :drive]

desc "Runs all the tests"
task :test_drive do
  sh "rspec spec/ -fd"
end

desc "Executes the ruby mars_rover program with cord.in as input"
task :drive do
  sh "ruby lib/mars_rover.rb cord.in"
end
