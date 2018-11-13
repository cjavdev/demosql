Reservation.delete_all
Listing.delete_all
Host.delete_all
Channel.delete_all

Channel.create(name: "Airbnb")
Channel.create(name: "Booking.com")
Channel.create(name: "TripAdvisor")
Channel.create(name: "HomeAway")
Channel.create(name: "Expedia")

property_types = [
  "Cabin",
  "Home",
  "Palace",
  "Castle",
  "Tree House",
  "Appartment",
  "Condo",
  "House",
  "Cottage",
  "Garage",
  "Loft",
  "Flat"
]
10.times do
  f, l = Faker::FunnyName.two_word_name.split(' ')
  host = Host.create!(
    first_name: f,
    last_name: l
  )

  rand(1...23).times do
    location = "#{ Faker::LordOfTheRings.location } #{ property_types.sample }"
    listing = Listing.create!(
      host_id: host.id,
      headline: location,
      description: Faker::Hipster.paragraph,
      photo_url: "",
      lat: Faker::Address.latitude,
      lng: Faker::Address.longitude,
      accommodates: rand(2...12),
      bedrooms: rand(1...7),
      bathrooms: rand(1..7),
      beds: rand(1..20),
      city: Faker::Address.city
    )
    rand(1..10).times do
      seed = rand(-365..365)
      arrival = (DateTime.now + seed.days).to_date
      departure = arrival + rand(2..8).days
      Reservation.create!(
        arrival: arrival,
        departure: departure,
        listing_id: listing.id,
        guest_name: Faker::FunnyName.two_word_name,
        value: rand(100...30000),
        channel_id: Channel.all.sample.id
      )
    end
  end
end
