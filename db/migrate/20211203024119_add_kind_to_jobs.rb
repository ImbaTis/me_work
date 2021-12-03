class AddKindToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :kind, :string
  end
end
