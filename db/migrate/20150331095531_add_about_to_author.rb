class AddAboutToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :about, :text
  end
end
