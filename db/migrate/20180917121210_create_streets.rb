class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.string :name
      t.string :zipcode
      t.string :type
      t.references :district, foreign_key: true

      t.timestamps
    end
  end
end
