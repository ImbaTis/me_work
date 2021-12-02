class AddDescriptionToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :description, :string
  end
end
