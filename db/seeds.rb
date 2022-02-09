# frozen_string_literal: true

User.find_or_create_by(email: "test@example.com") do |u|
  u.password = "secret123"
end

250.times do
  Article.create do |article|
    article.title = Faker::Hipster.sentence
    article.content = Faker::Lorem.paragraph_by_chars
    article.published_at = (1..24).to_a.sample.months.ago
  end
end
