15.times do 
  d = Playlist.create(
    name: Faker::Commerce.department,
  )

  10.times do
  i = d.items.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph_by_chars(256, false),
    price: Faker::Commerce.price(range = 0..1000.00, as_string = false),
  )

    10.times do
      i.reviews.create(
        title: Faker::Cannabis.health_benefit,
        body: Faker::FamousLastWords.last_words,
        author: Faker::Dune.character,
        rating: rand(1..5),
        image_url: Faker::Avatar.image,
      )
    end
  end
end

puts "all information seeded"