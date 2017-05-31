class Project < ActiveRecord::Base
  acts_as_taggable
  mount_uploader :image, ImageUploader

  has_many :skills
end

# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  link        :string
#
