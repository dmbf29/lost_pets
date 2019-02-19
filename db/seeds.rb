# require 'faker'
puts "Creating pets..."
15.times do
  Pet.create!(
    name: Faker::Name.name,
    species: Pet::SPECIES.sample,
    found_on: Date.today - (1..10).to_a.sample,
    dead: [true, false].sample,
    location: Faker::Address.street_address
  )
end
puts "Finished creating pets..."
