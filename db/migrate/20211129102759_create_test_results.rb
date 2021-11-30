class CreateTestResults < ActiveRecord::Migration[6.0]
  def change
    create_table :test_results do |t|
      t.string :name
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
