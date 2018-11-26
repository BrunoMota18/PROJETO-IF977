# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(email: 'dummy@rabbitcare.br', password: '123456', nome: 'Dummy', cpf:'22222222221', 
                crm:'13245670', tipo:'medico')

user2 = User.new(email: 'bvgm@cin.ufpe.br', password: '123456', nome: 'Bruno', cpf:'22222222222', 
                crm:'13245671', tipo:'medico')

user1.skip_confirmation!
user1.save!

user2.skip_confirmation!
user2.save!