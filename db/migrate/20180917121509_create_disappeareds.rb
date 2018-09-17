class CreateDisappeareds < ActiveRecord::Migration[5.2]
  def change
    create_table :disappeareds do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :age
      t.string :sex
      t.date :birthdate
      t.date :date_desapearence
      t.references :street, foreign_key: true
      t.string :mother
      t.string :dad

      t.timestamps
    end
  end
end
