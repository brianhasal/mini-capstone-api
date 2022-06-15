# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# product = Product.new("name": "Marvel Legends Series 6-inch Scale Action Figure Toy Zombie Hunter Spidey", "price": 30, "image_url": "https://cdn.shopify.com/s/files/1/0268/4459/4355/products/ZombieHunterSpidey_1024x.jpg", "description": "Spider-Man from the zombie episode of \"What If...?\"")
# product.save

# product = Product.new("name": "Star Wars The Child Talking Plush Toy with Character Sounds and Accessories, The Mandalorian Toy", "price": 21, "image_url": "https://m.media-amazon.com/images/I/81o35RSl54L._AC_SX425_.jpg", "description": "From Hasbro\’s Star Wars Collection: The Child Talking Plush Toy with character sounds and accessories!")
# product.save

# product = Product.new("name": "Ni No Kuni II: Revenant Kingdom - PlayStation 4 Premium Edition", "price": 65, "image_url": "https://m.media-amazon.com/images/I/51thziArXwL._SX385_.jpg", "description": "Re-enter the animated world of Ni no Kuni in the latest role-playing masterpiece developed by LEVEL-5. Explore a beautifully crafted world and experience the gripping story in an all-new RPG adventure. LEVEL-5 reunites with Yoshiyuki Momose on character design and music composed by Joe Hisaishi in the production of the next Ni no Kuni tale. Premium Edition includes: Special Sword Set DLC, Exclusive Dragon Sword DLC, Exclusive Steelbook, 3D Papercraft, and Music CD Collection.")
# product.save


### IS THE OLD WAY... Product.create(...) combines the functions of Product.new(...) & Product.save
### This practice streamlines code

############### USER SEEDS #################
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv#

user = User.create!(
  "name": "admin",
  "email": "admin@test.com",
  "password": "password"
)


############### SUPPLIER SEEDS #################
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv#

supplier = Supplier.create(
  "name": "Marvel, Disney",
  "email": "support@marvel.com",
  "phone_number": "800-SPD-RMAN"
)

supplier = Supplier.create(
  "name": "Konami",
  "email": "support@konami.com",
  "phone_number": "800-YUG-IOHH"
)

supplier = Supplier.create(
  "name": "Kenner",
  "email": "support@kenner.com",
  "phone_number": "800-STR-WARS"
)

supplier = Supplier.create(
  "name": "Studio Ghibli",
  "email": "support@ghibli.com",
  "phone_number": "800-MIYAZAKI"
)


################THEN SWITCH#################



############### PRODUCT SEEDS #################
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv#

product = Product.create(
  "name": "Marvel Legends Series 6-inch Scale Action Figure Toy Zombie Hunter Spidey", 
  "price": 30, 
  "description": "Spider-Man from the zombie episode of \"What If...?\"",
  "supplier_id": 1,
  "user_id": 1
)


product = Product.create(
  "name": "Star Wars The Child Talking Plush Toy with Character Sounds and Accessories, The Mandalorian Toy", "price": 21, 
  "description": "From Hasbro\’s Star Wars Collection: The Child Talking Plush Toy with character sounds and accessories!",
  "supplier_id": 2,
  "user_id": 1
)


product = Product.create(
  "name": "Ni No Kuni II: Revenant Kingdom - PlayStation 4 Premium Edition", 
  "price": 65, 
  "description": "Re-enter the animated world of Ni no Kuni in the latest role-playing masterpiece developed by LEVEL-5. Explore a beautifully crafted world and experience the gripping story in an all-new RPG adventure. LEVEL-5 reunites with Yoshiyuki Momose on character design and music composed by Joe Hisaishi in the production of the next Ni no Kuni tale. Premium Edition includes: Special Sword Set DLC, Exclusive Dragon Sword DLC, Exclusive Steelbook, 3D Papercraft, and Music CD Collection.",
  "supplier_id": 4,
  "user_id": 1
)


############### IMAGE SEEDS #################
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv#
image = Image.create(
  "url": "https://cdn.shopify.com/s/files/1/0268/4459/4355/products/ZombieHunterSpidey_1024x.jpg",
  "product_id": 1
)

image = Image.create(
  "url": "https://m.media-amazon.com/images/I/71LjH2dO2cL._AC_SX679_.jpg",
  "product_id": 1
)

image = Image.create(
  "url": "https://m.media-amazon.com/images/I/71trxV1E3yL._AC_SX679_.jpg",
  "product_id": 1
)

image = Image.create(
  "url": "https://m.media-amazon.com/images/I/81o35RSl54L._AC_SX425_.jpg",
  "product_id": 2
)

image = Image.create(
  "url": "https://m.media-amazon.com/images/I/51thziArXwL._SX385_.jpg",
  "product_id": 3
)

