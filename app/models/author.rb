class Author < ActiveRecord::Base

  has_many :posts
  has_many :comments, :dependent => :destroy

  scope :posts_author, -> {where(:posts_author => true)}

  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: {minimum: 2, maximum: 50}

end

# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  about      :text
#
