# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
require 'faker'

Article.destroy_all
# puts "check destroy"

10.times do
    article = Article.new(
      title: Faker::Book.title,
      content: Faker::Lorem.paragraph
    )
    article.save!
    # puts "1 down"
end
