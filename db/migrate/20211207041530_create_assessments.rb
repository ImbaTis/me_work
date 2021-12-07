class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.string :title
      t.text :description
      t.string :time
      t.string :date
      t.string :url

      t.timestamps
    end
  end
end
