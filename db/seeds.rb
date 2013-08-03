Category.destroy_all

Category.create!(name: 'Notícias')
Category.create!(name: 'Esportes')
Category.create!(name: 'Entretenimento')


Article.destroy_all

require 'ffaker'

100.times do |n|
  Article.create!(
    title: Faker::Lorem.sentence(2),
    summary: Faker::Lorem.paragraph,
    body: Faker::Lorem.paragraphs.join(" "),
    category: Category.all.sample)
end