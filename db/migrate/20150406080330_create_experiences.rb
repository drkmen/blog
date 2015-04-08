class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :job_title
      t.string :employer
      t.string :description
      t.datetime :from
      t.datetime :to
      t.boolean :study

      t.timestamps null: false
    end
  end
end
