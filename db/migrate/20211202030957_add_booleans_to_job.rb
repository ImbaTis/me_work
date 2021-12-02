class AddBooleansToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :fav, :boolean
    add_column :jobs, :new, :boolean
  end
end
