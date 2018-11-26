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

user3 = User.new(email: 'e@e.br', password: '123456', nome: 'Enf', cpf:'22222222223', 
    coren:'123456789123456', tipo:'enfermeiro')

user1.skip_confirmation!
user1.save!

user2.skip_confirmation!
user2.save!

user3.skip_confirmation!
user3.save!

paciente = Paciente.new(nome:"Pascal", medico_crm:'13245671', enfermeiro_coren:'123456789123456', cpf_responsavel:'22222222224', nome_responsavel:'Joaquim')
paciente.save!
