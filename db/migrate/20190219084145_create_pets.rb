class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :found_on
      t.boolean :dead, default: false
      t.string :location
      t.string :species

      t.timestamps
    end
  end
end
