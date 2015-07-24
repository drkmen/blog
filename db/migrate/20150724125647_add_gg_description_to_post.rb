class AddGgDescriptionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :google_desc, :string
  end
end
