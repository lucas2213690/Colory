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

ActiveRecord::Schema.define(version: 20170916032409) do

  create_table "formandos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "cpf"
    t.integer "rg"
    t.date "nascimento"
    t.string "email"
    t.integer "tel"
    t.string "endereco"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.integer "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "turma_id"
  end

  create_table "turmas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "faculdade"
    t.string "curso"
    t.string "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
