class AddValueToSkills < ActiveRecord::Migration
  def change
    remove_column :skills, :years
    add_column :skills, :value, :integer
    add_column :skills, :start_date, :date

  end
end
