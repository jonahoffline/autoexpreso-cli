require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

task :default => :spec
task :test => :spec

desc 'Run all specs and open browser'
task :lazy do |t|
  Rake::Task['spec'].execute
  `open coverage/index.html`
end