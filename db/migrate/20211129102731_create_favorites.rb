class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :record, polymorphic: true

      t.timestamps
    end
  end
end
