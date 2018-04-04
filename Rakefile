require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

# task :default => :spec

task default: [:spec, :execute]

desc "Runs all the tests"
task :test do
  sh "rspec spec/ -fd"
end

desc "Executes the ruby mars_rover program with cord.in as input"
task :execute do
  sh "ruby lib/mars_rover.rb cord.in"
end
