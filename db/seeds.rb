require 'faker'

puts 'Cleaning database...'

Item.destroy_all

puts 'Creating 100 fake itemss...'
100.times do
  item = Item.new({
    page_url: Item::URL.sample,
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    text_description: Faker::Cannabis.health_benefit,
    images: "https://picsum.photos/282/325/?random"
    }
  )
  item.save!
end
