# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_08_171652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appwebexemps", force: :cascade do |t|
    t.string "nome"
    t.string "id_seq"
    t.text "endereco"
    t.decimal "preco"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "Proximo_procedimento"
    t.string "Adicionar_procedimento"
    t.string "Concluir_Procedimento"
    t.string "Descricao_procedimento"
    t.string "Dados_Paciente"
    t.string "Procedimentos_cancelados"
    t.string "Procedimentos_realizados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crud_usuarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enfermeiros", force: :cascade do |t|
    t.string "login"
    t.string "senha"
    t.string "cpf"
    t.string "nome"
    t.string "email", default: "", null: false
    t.string "telefone"
    t.string "coren"
    t.text "tarefas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.index ["coren"], name: "index_enfermeiros_on_coren", unique: true
    t.index ["cpf"], name: "index_enfermeiros_on_cpf", unique: true
    t.index ["email"], name: "index_enfermeiros_on_email", unique: true
    t.index ["login"], name: "index_enfermeiros_on_login", unique: true
    t.index ["reset_password_token"], name: "index_enfermeiros_on_reset_password_token", unique: true
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "crm"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["cpf"], name: "index_medicos_on_cpf", unique: true
    t.index ["crm"], name: "index_medicos_on_crm", unique: true
    t.index ["email"], name: "index_medicos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_medicos_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "senha"
    t.string "cpf"
    t.string "nome"
    t.string "telefone"
    t.string "tarefas"
    t.string "coren"
    t.string "crm"
    t.string "estado"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["coren"], name: "index_users_on_coren", unique: true
    t.index ["cpf"], name: "index_users_on_cpf", unique: true
    t.index ["crm"], name: "index_users_on_crm", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
