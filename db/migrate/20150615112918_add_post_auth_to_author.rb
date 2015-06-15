class AddPostAuthToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :posts_author, :boolean, :default => false
  end
end
