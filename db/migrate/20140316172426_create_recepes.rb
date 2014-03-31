class CreateRecepes < ActiveRecord::Migration
  def change
    create_table :recepes do |t|
      t.string :name
      t.integer :type_id
      t.text :description
      t.text :ingredients

      t.timestamps
    end
  end
end
