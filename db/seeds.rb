# frozen_string_literal: true

250.times do
  Article.create do |article|
    article.title = Faker::Hipster.sentence
    article.content = Faker::Lorem.paragraph_by_chars
    article.published_at = (1..24).to_a.sample.months.ago
  end
end
