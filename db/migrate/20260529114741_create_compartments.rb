class CreateCompartments < ActiveRecord::Migration[8.1]
  def change
    create_table :compartments do |t|
      t.string :cabinet, null: false
      t.string :name, null: false
      t.float :width_cm, null: false

      t.timestamps
    end
  end
end
