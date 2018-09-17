class CreateHistorics < ActiveRecord::Migration[5.2]
  def change
    create_table :historics do |t|
      t.string :description
      t.string :text
      t.references :disapeared, foreign_key: true
      t.timestamp :date
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
