class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :Name_of_the_Student
      t.integer :Class
      t.string :Email_Id
      t.string :Date_of_birth
      t.text :Residential_Area
      t.integer :Contact_Number
      t.string :Fathers_Name
      t.string :Occupation_of_Father
      t.integer :Fathers_Contact_Number
      t.string :Mothers_Name
      t.string :Occupation_of_Mother
      t.integer :Mothers_Contact_Number
    end
  end
end
