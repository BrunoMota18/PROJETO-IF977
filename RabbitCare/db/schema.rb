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

ActiveRecord::Schema.define(version: 2018_11_26_165614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversas", force: :cascade do |t|
    t.integer "autor_id"
    t.integer "destinatario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id", "destinatario_id"], name: "index_conversas_on_autor_id_and_destinatario_id", unique: true
    t.index ["autor_id"], name: "index_conversas_on_autor_id"
    t.index ["destinatario_id"], name: "index_conversas_on_destinatario_id"
  end

  create_table "medicamentos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_medicamentos_on_cpf", unique: true
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

  create_table "mensagems", force: :cascade do |t|
    t.text "conteudo"
    t.bigint "conversa_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversa_id"], name: "index_mensagems_on_conversa_id"
    t.index ["user_id"], name: "index_mensagems_on_user_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "cpf_responsavel"
    t.string "nome_responsavel"
    t.string "cpf"
    t.string "nome"
    t.string "estado"
    t.string "medico_crm"
    t.string "enfermeiro_coren"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_pacientes_on_cpf", unique: true
    t.index ["enfermeiro_coren"], name: "index_pacientes_on_enfermeiro_coren", unique: true
    t.index ["medico_crm"], name: "index_pacientes_on_medico_crm", unique: true
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

  create_table "utensilios", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_utensilios_on_cpf", unique: true
  end

  add_foreign_key "mensagems", "conversas"
  add_foreign_key "mensagems", "users"
  add_foreign_key "pacientes", "users", column: "enfermeiro_coren", primary_key: "coren"
  add_foreign_key "pacientes", "users", column: "medico_crm", primary_key: "crm"
end
