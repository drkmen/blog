class ChangeExperienceDateTimeToDate < ActiveRecord::Migration
  def change
    change_column :experiences, :from, :date
    change_column :experiences, :to, :date
  end
end
