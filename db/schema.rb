# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_03_061705) do

  create_table "tables", force: :cascade do |t|
    t.string "Name_of_the_Student"
    t.integer "Class"
    t.string "Email_Id"
    t.string "Date_of_birth"
    t.text "Residential_Area"
    t.integer "Contact_Number"
    t.string "Fathers_Name"
    t.string "Occupation_of_Father"
    t.integer "Fathers_Contact_Number"
    t.string "Mothers_Name"
    t.string "Occupation_of_Mother"
    t.integer "Mothers_Contact_Number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
