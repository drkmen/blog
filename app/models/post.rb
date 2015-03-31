class Post < ActiveRecord::Base

  acts_as_taggable
  mount_uploader :image, ImageUploader

  belongs_to :author
  has_many :comments

  scope :last_num, ->(limit_param) { limit_param.present? ? limit(limit_param).order('id DESC') : all}
  scope :tagged, ->(tags) { tags.present? ? tagged_with([tags], :any => true) : all}



end

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
