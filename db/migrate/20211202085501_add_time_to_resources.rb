class AddTimeToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :time, :string , :default => '1hr'
  end
end
