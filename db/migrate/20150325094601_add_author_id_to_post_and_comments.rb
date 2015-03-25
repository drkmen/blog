class AddAuthorIdToPostAndComments < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :integer
    add_column :comments, :author_id, :integer
  end
end
