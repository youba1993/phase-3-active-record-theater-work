puts "Seeding data..."


r1 = Role.create(character_name: "Crek")
r2 = Role.create(character_name: "Bruce")

Audition.create(actor: "David" ,location: "CA",phone:  rand(1000000000..2000000000), hired: false,  role_id:  r1.id )
Audition.create(actor: "Jhon" ,location: "NW",phone:  rand(1000000000..2000000000), hired: false,  role_id:  r1.id )
Audition.create(actor: "Styve" ,location: "WA",phone:  rand(1000000000..2000000000), hired: false,  role_id:  r2.id )
Audition.create(actor: "Tom" ,location: "TX",phone:  rand(1000000000..2000000000), hired: false,  role_id:  r2.id )

# 10.times do
  
#   role = Role.create(
#     character_name: Faker::DcComics.hero,
#   )

#   rand(1..5).times do
#     Audition.create(
#         actor:      Faker::DcComics.name , 
#         location:   Faker::Address.full_address,
#         phone:      rand(1000000000..2000000000),
#         hired:      Faker::Boolean.boolean,
#         role_id:    role.id 
#     )
#   end
# end

puts "Done seeding!"
