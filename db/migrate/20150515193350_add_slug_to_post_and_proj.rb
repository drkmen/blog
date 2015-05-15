class AddSlugToPostAndProj < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :string, :uniq => true
  end
end
