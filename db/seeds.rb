User.destroy_all

User.create!(
    name: 'Usuário Teste da Silva',
    email: 'teste@teste.com',
    password: 'teste1234'
    )

Category.destroy_all

Category.create!(name: 'Notícias')
Category.create!(name: 'Esportes')
Category.create!(name: 'Entretenimento')


Article.destroy_all

require 'ffaker'

100.times do |n|
  Article.create!(
    title: Faker::Lorem.words(4).join(' ').capitalize,
    summary: Faker::Lorem.words(10).join(' ').capitalize + ".",
    body: Faker::Lorem.paragraphs.join(" "),
    category: Category.all.sample)
end