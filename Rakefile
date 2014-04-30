require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :rspec => :spec

task :start do
  ruby "bin/cookie_monster"
end

task :test do
  ruby "spec/small_board.rb"
end