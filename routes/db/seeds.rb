# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do
  
  User.destroy_all

  u1 = User.create!(username: 'Kyle')
  u2 = User.create!(username: 'Tamir')

  Artwork.destroy_all

  a1 = Artwork.create!(title: 'The Reckoning', image_url: 'r@eckon.ing', artist_id: u1.id)
  a2 = Artwork.create!(title: 'The Weturning', image_url: 'w@eturn.ing', artist_id: u2.id)

  ArtworkShare.destroy_all

  as1 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u2.id)
  as1 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: u1.id)



end