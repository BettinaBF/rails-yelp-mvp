require 'faker'

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.create!(
    name:    "\"The #{Faker::Hipster.word}\"",
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample(1)[0]
  )
end
puts 'Finished!'
