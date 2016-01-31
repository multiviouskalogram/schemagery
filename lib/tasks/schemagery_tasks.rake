desc "Explaining what the task does"
namespace :schemagery do
  # Task goes here
  task :draw do
    puts ActiveRecord::Base.connection.tables
    # binding.pry
  end
end
