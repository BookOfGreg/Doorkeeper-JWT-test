# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'local@example.com', password: ENV['PASS'])
OauthApplication.create(
  name: 'Test',
  uid: '5e8203151b4b14d30fd69001ef5b8a0356bee06e8a2ca9b21aac0f061a7f29b4',
  secret: '5e8203151b4b14d30fd69001ef5b8a0356bee06e8a2ca9b21aac0f061a7f29b4',
  redirect_uri: 'urn:ietf:wg:oauth:2.0:oob'
)
