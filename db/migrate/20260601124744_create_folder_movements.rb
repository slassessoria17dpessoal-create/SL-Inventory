class CreateFolderMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :folder_movements do |t|
      t.string :company_name, null: false
      t.string :action_type, null: false
      t.string :from_compartment
      t.string :to_compartment
      t.float :thickness_cm, null: false

      t.timestamps
    end
  end
end
