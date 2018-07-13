# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#user = User.new
#user.display_name = 'Admin'
#user.full_name = 'Administrador'
#user.password = 'dinnerdash'
#user.password_confirmation = 'dinnerdash'
#user.email = 'admin@admin.com'
#user.is_admin = true
#user.save!

# Usuarios
User.create(display_name: 'Admin', full_name: 'Administrador', password: 'dinnerdash', email: 'admin@admin.com', is_admin: true)
User.create(display_name: 'Tiago', full_name: 'Tiago Mito', password: 'password123', email: 'tiago@tiago.com', is_admin: false)
User.create(display_name: 'Diogo', full_name: 'Diogo Mito', password: 'diogomito', email: 'diogo@diogo.com', is_admin: false)
User.create(display_name: 'User', full_name: 'User Batata', password: '123456', email: 'user@user.com', is_admin: false)

# Categorias
Category.create(name: 'Massas') #1
Category.create(name: 'Molhos') #2
Category.create(name: 'Acompanhamentos') #3
Category.create(name: 'Carnes') #4
Category.create(name: 'Vegetariano') #5
Category.create(name: 'Saladas') #6

# Pratos
# Massas
Meal.create(name: 'Espaguete', category_id: 1, description: 'Um delicioso Espaguete!', price: 3.50, available: true)
Meal.create(name: 'Nhoque', category_id: 1, description: 'Aquele Nhoque que faz você querer mais!', price: 4.50, available: true)
Meal.create(name: 'Penne', category_id: 1, description: 'Vai dizer que você não curte um Penne?', price: 4.00, available: false)
# Molhos
Meal.create(name: 'Molho Branco', category_id: 2, description: 'Molho a base de leite', price: 4.00, available: true)
Meal.create(name: 'Molho Sugo', category_id: 2, description: 'Molho a base de tomate', price: 4.00, available: true)
Meal.create(name: 'Molho Funghi', category_id: 2, description: 'Molho a base de cogumelos', price: 4.50, available: true)
# Acompanhamentos
Meal.create(name: 'Arroz', category_id: 3, description: 'Arroz top!', price: 2.50, available: true)
Meal.create(name: 'Feijão', category_id: 3, description: 'Feijão maneiro!', price: 3.00, available: true)
Meal.create(name: 'Batata frita', category_id: 3, description: 'Melhor que a do M!', price: 3.00, available: true)
Meal.create(name: 'Purê de batata', category_id: 3, description: 'Batata amassadinha!', price: 3.00, available: true)
# Carnes
Meal.create(name: 'Frango Assado', category_id: 4, description: 'Frango assado no forno!', price: 6.00, available: true)
Meal.create(name: 'Carne de sol', category_id: 4, description: 'Carne de sol assada no forno!', price: 6.00, available: true)
Meal.create(name: 'Estrogonofe de carne', category_id: 4, description: '#bemtop', price: 6.00, available: true)
Meal.create(name: 'Estrogonofe de frango', category_id: 4, description: '#bemtop', price: 6.00, available: true)
Meal.create(name: 'Costelinha suína', category_id: 4, description: 'Costelinha de porco', price: 6.00, available: true)
Meal.create(name: 'Peixe grelhado', category_id: 4, description: 'Tilápia de maromba', price: 6.00, available: true)
# Vegetariano
Meal.create(name: 'Abobrinha recheada com quinoa', category_id: 5, description: 'Abobrinha e quinoa', price: 6.00, available: true)
Meal.create(name: 'Quibe de lentilha', category_id: 5, description: 'Quibe assado de lentilhas', price: 6.00, available: true)
Meal.create(name: 'Lentilha gratinada', category_id: 5, description: 'Lentilhas', price: 6.00, available: true)
Meal.create(name: 'Almondegas de soja', category_id: 5, description: 'Bolinhas de soja', price: 6.00, available: true)
# Saladas
Meal.create(name: 'Salada de folhas', category_id: 6, description: 'Um mix de folhas', price: 2.00, available: true)
Meal.create(name: 'Vinagrete', category_id: 6, description: 'Vinagretezinho da galera', price: 2.00, available: true)
Meal.create(name: 'Fattoush', category_id: 6, description: 'Salada árabe', price: 2.00, available: true)
