# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema[7.0].define(version: 2023_03_07_033328) do

  create_table "admins", force: :cascade do |t|
    t.string "usuario"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.date "data"
    t.time "horario"
    t.integer "paciente_id", null: false
    t.integer "dentistum_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dentistum_id"], name: "index_consulta_on_dentistum_id"
    t.index ["paciente_id"], name: "index_consulta_on_paciente_id"
  end

  create_table "dentista", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "CRO"
    t.string "CPF"
    t.string "especializacao"
    t.date "data"
    t.time "horaInicio"
    t.time "horaTermino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "endereco_pacientes", force: :cascade do |t|
    t.string "cep"
    t.string "cidade"
    t.string "bairro"
    t.string "logradouro"
    t.string "complemento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "paciente_id", null: false
    t.index ["paciente_id"], name: "index_endereco_pacientes_on_paciente_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.date "nascimento"
    t.string "cpf"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "consulta", "dentista"
  add_foreign_key "consulta", "pacientes"
  add_foreign_key "endereco_pacientes", "pacientes"
end
