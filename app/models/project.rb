class Project < ActiveRecord::Base

  acts_as_taggable
  has_many :skills
  mount_uploader :image, ImageUploader

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
