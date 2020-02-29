class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.date :birthday
      t.string :breed
      t.text :description
      t.string :microchip_number
      t.date :adoption_date
      t.text :color
      t.integer :owner_id

      t.timestamps
    end
  end
end
