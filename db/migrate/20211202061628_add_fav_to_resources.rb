class AddFavToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :fav, :boolean
  end
end
