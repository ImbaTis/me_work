class AddTypesToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :kind, :string
  end
end
