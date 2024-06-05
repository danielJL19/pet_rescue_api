# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
500.times do |pet|
  Pet.create(
    name: Faker::Name.name,
    type_of_pet: rand(1..2),
    description: "Autem fuga quia nemo vulputate sed odio tempore! Eu facilisis, nisl vel incidunt? Pede magnis nostrud nisl autem, ducimus hendrerit pharetra sequi, montes explicabo veritatis dolore eaque ornare eget dictumst eros laudantium quas conubia, commodo augue. Augue sit officiis dignissimos pariatur potenti eiusmod orci ultricies eleifend! Ipsum irure. Volutpat dolor? Harum do numquam, numquam nonummy numquam nunc. Excepturi! Viverra commodo, incididunt tellus delectus do labore accusamus illum etiam. Mi hendrerit magni felis, eligendi diamlorem pharetra incididunt, unde proident pulvinar et parturient felis illum possimus! Adipiscing proin ad aspernatur! Consectetur aptent. Debitis dolor ipsam commodo, porttitor, deleniti quae cillum! Iure, eu.
      Excepturi donec, accusantium, dignissimos feugiat cupidatat hendrerit dapibus asperiores ullam egestas sed vel fugit hymenaeos eaque, voluptate wisi, dolorum eum, sapiente sem beatae, blandit eleifend! Purus orci neque. Architecto dolorem! Habitant nonummy, porro, pharetra, bibendum! Optio molestiae odit in, wisi amet gravida elit pellentesque, rem lorem fermentum facilis velit montes natoque quidem! Diam unde, dolores! Itaque. Diamlorem eligendi. Nostrum facilis litora quisque, accumsan. Erat nam! Donec? Sit lacus? Ipsam cubilia occaecat optio, ipsa nullam sapien eum earum leo impedit class cras sint, odio pharetra, sem sapiente placeat itaque hendrerit diamlorem, volutpat sapiente amet eligendi ultricies. Quaerat aliquip fuga, vel! Molestias."
  )
end
