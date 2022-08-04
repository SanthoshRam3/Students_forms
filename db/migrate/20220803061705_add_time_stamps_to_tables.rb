class AddTimeStampsToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables , :created_at , :datetime
    add_column :tables , :updated_at , :datetime
  end
end
