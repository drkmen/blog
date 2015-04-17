class Project < ActiveRecord::Base

  acts_as_taggable
  has_many :skills
  mount_uploader :image, ImageUploader

end
