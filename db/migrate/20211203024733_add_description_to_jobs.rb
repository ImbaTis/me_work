class AddDescriptionToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :description, :string
  end
end
