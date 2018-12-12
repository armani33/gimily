require 'faker'

puts 'Cleaning database...'

Item.destroy_all

puts 'Creating 100 fake itemss...'
100.times do
  task = Task.new({
    title: Faker::Cannabis.type,
    details: Faker::Cannabis.health_benefit,
    }
  )
  task.save!
end
