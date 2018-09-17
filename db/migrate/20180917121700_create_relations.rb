class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.references :user, foreign_key: true
      t.references :desapeared, foreign_key: true
      t.references :relative, foreign_key: true

      t.timestamps
    end
  end
end
