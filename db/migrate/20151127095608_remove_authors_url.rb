class RemoveAuthorsUrl < ActiveRecord::Migration
  def change
    remove_column :authors, :url
  end
end
