# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.display_name = 'Admin'
user.full_name = 'Administrador'
user.password = 'dinnerdash'
user.password_confirmation = 'dinnerdash'
user.email = 'admin@admin.com'
user.is_admin = true
user.save!