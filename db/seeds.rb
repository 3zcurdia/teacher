# frozen_string_literal: true

100.times do
  Product.create do |product|
    product.name = Faker::Hipster.words.join(" ").titleize
    product.description = Faker::Lorem.paragraph_by_chars
    product.price_cents = (1..100_00).to_a.sample
  end
end
