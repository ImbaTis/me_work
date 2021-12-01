class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location, :text
    add_column :users, :languages, :text
    add_column :users, :code, :text
    add_column :users, :slogan, :text
    add_column :users, :quote, :text
    add_column :users, :passions, :text
    add_column :users, :hobbies, :text
    add_column :users, :story, :text
    add_column :users, :work_style, :text
    add_column :users, :causes, :text
    add_column :users, :why, :text
    add_column :users, :hours, :text
    add_column :users, :commute, :text
    add_column :users, :skills, :text
    add_column :users, :contribute, :text
    add_column :users, :comp, :text
    add_column :users, :teammates, :text
    add_column :users, :boss, :text
    add_column :users, :org_structure, :text
    add_column :users, :size, :text
    add_column :users, :work_structure, :text
    add_column :users, :amenities, :text
    add_column :users, :travel, :text
    add_column :users, :pic_url, :text
    add_column :users, :portfolio_url, :text
    add_column :users, :cv_url, :text
    add_column :users, :cover_letter_url, :text
  end
end
