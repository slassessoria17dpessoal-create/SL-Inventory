class CreateFolders < ActiveRecord::Migration[8.1]
  def change
    create_table :folders do |t|
      t.string :company_name, null: false
      t.references :compartment, null: false, foreign_key: true
      t.float :thickness_cm, null: false

      t.timestamps
    end
  end
end
