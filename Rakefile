require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

# task :default => :spec

task default: [:spec, :execute]

desc "Runs all the tests"
task :test do
  sh "rspec spec/ -fd"
end

desc "Executes the ruby mars-rover program with mars-rover.in as input"
task :execute do
  sh "ruby lib/mars_rover.rb mars-rover.in"
end
